APP ?=vararg_gpu

OPT ?=-O3

CC = clang
CXX = clang++

bin: bin/$(APP)

target: bin

CFLAGS = $(OPT) -Wall -std=c++2a -Iinclude -nogpuinc

comma:= ,
star:= *

ifdef FUNCTION
CFLAGS += -DFUNCTION=$(FUNCTION)
endif

ifdef PREFIX
CFLAGS += -DPREFIX=$(PREFIX)
endif

# Finding the number of arguments as the number of commas plus one. The first comma is to increment by one.
CFLAGS += -DNARGS=$(shell echo ,$(ARGS) | tr -cd , | wc -c)

# Defining argument types with and without pointers
ifdef ARGS
CFLAGS += -DARGS="$(subst $(star),,$(ARGS))"
CFLAGS += -DPTRARGS="$(ARGS)"
endif

ifdef RETTYPE
CFLAGS += -DRETTYPE="$(RETTYPE)"
endif

# If the return type is void, this case must be handled in a special way.
ifeq ($(RETTYPE),void)
CFLAGS += -DVOIDRETTYPE
endif

getarg = $(word $1,$(subst $(comma), ,$(ARGS)))
ifneq ($(findstring $(star),$(call getarg,1)),)
CFLAGS += -DARG1POINTER
endif
ifneq ($(findstring $(star),$(call getarg,2)),)
CFLAGS += -DARG2POINTER
endif
ifneq ($(findstring $(star),$(call getarg,3)),)
CFLAGS += -DARG3POINTER
endif

OMPTARGET=amdgcn-amd-amdhsa
OFFLOADARCH=gfx906

CFLAGS += -fopenmp
CFLAGS += -fopenmp-targets=$(OMPTARGET) --offload-arch=$(OFFLOADARCH)
CFLAGS += -fopenmp-offload-mandatory #--offload-device-only
CFLAGS += -foffload-lto
LDFLAGS += -L/dev/shm/rydahl1/LLVM/install/lib -lomp
ifdef LINKCPULIBC
LDFLAGS += -lm
else
LDFLAGS += -L/dev/shm/rydahl1/LLVM/install/lib -lomptarget
LDFLAGS += -L/dev/shm/rydahl1/LLVM/install/lib -lomptarget.devicertl
LDFLAGS += -L/dev/shm/rydahl1/LLVM/install/lib/x86_64-unknown-linux-gnu -lmgpu
endif
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

