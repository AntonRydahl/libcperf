APP ?=vararg

OPT ?=-O3

CC = clang
CXX = clang++

bin: bin/$(APP)

target: bin

CFLAGS = $(OPT) -Wall -std=c++2a -Iinclude -nogpuinc

ifdef VENDORFUN
CFLAGS += -DVENDORFUN=$(VENDORFUN)
endif

ifdef BUILTINFUN
CFLAGS += -DBUILTINFUN=$(BUILTINFUN)
endif

ifdef NARGS
CFLAGS += -DNARGS=$(NARGS)
endif

ifdef ARGS
CFLAGS += -DARGS=$(ARGS)
endif

ifdef RETTYPE
CFLAGS += -DRETTYPE=$(RETTYPE)
endif

#CFLAGS += -DARGS=double -DRETTYPE=double -DNARGS=1 -DVENDORFUN=__ocml_sinh_f64 -DBUILTINFUN=sinh

OMPTARGET=amdgcn-amd-amdhsa
OFFLOADARCH=gfx906

CFLAGS += -fopenmp
CFLAGS += -fopenmp-targets=$(OMPTARGET) --offload-arch=$(OFFLOADARCH)
CFLAGS += -fopenmp-offload-mandatory #--offload-device-only
CFLAGS += -foffload-lto
LDFLAGS += -L/g/g92/rydahl1/LLVM2/install/lib -lomptarget
LDFLAGS += -L/g/g92/rydahl1/LLVM2/install/lib -lomp
LDFLAGS += -L/g/g92/rydahl1/LLVM2/install/lib -lomptarget.devicertl
LDFLAGS += -L/g/g92/rydahl1/LLVM2/install/lib -L/g/g92/rydahl1/LLVM2/install/lib/x86_64-unknown-linux-gnu -lmgpu -lcgpu -lm
#LDFLAGS += -Xlinker --verbose

# Compiling source to binary
bin/$(APP): src/$(APP).cpp
	$(CXX) $(CFLAGS) src/$(APP).cpp -o bin/$(APP) $(LDFLAGS)

.PHONY: clean ir temps
clean:
	rm -rf bin/* ir/* *.core ast/* *.bc *.o *.s *.ii *.out *.ll

ir:
	$(CXX) $(CFLAGS) -emit-llvm -S src/$(APP).cpp -o ir/$(APP).ll

temps: clean
	rm -rf $(TMPOUT)
	mkdir -p $(TMPOUT)
	$(CXX) $(CFLAGS) -save-temps src/$(APP).cpp -o $(APP).o $(LDFLAGS)
	mv $(APP)*.o $(TMPOUT)
	mv $(APP)*.bc $(TMPOUT)
	mv $(APP)*.ii $(TMPOUT)
	mv $(APP)*.s $(TMPOUT)
	mv $(APP)*.out $(TMPOUT)

