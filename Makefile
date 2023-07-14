APP ?=vararg_gpu

OPT ?=-O3

CC = clang
CXX = clang++

bin: bin/$(APP)

target: bin

CFLAGS = $(OPT) -Wall -std=c++2a -Iinclude -nogpuinc

ifdef FUNCTION
CFLAGS += -DFUNCTION=$(FUNCTION)
endif

ifdef PREFIX
CFLAGS += -DPREFIX=$(PREFIX)
endif

ifdef NARGS
CFLAGS += -DNARGS=$(NARGS)
endif

ifdef ARGS
CFLAGS += -DARGS=$(ARGS)
endif

ifdef PTRARGS
CFLAGS += -DPTRARGS=$(PTRARGS)
endif

ifdef RETTYPE
CFLAGS += -DRETTYPE=$(RETTYPE)
endif

ifdef VOIDRETTYPE
CFLAGS += -DVOIDRETTYPE
endif

#CFLAGS += -DARGS=double -DRETTYPE=double -DNARGS=1 -DVENDORFUN=__ocml_sinh_f64 -DBUILTINFUN=sinh

OMPTARGET=amdgcn-amd-amdhsa
OFFLOADARCH=gfx906

CFLAGS += -fopenmp
CFLAGS += -fopenmp-targets=$(OMPTARGET) --offload-arch=$(OFFLOADARCH)
CFLAGS += -fopenmp-offload-mandatory #--offload-device-only
CFLAGS += -foffload-lto
LDFLAGS += -L/dev/shm/rydahl1/LLVM/install/lib -lomptarget
LDFLAGS += -L/dev/shm/rydahl1/LLVM/install/lib -lomp
LDFLAGS += -L/dev/shm/rydahl1/LLVM/install/lib -lomptarget.devicertl
LDFLAGS += -L/dev/shm/rydahl1/LLVM/install/lib -L/dev/shm/rydahl1/LLVM/install/lib/x86_64-unknown-linux-gnu -lmgpu -lcgpu -lm
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

