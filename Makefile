APP ?=vararg_gpu

OPT ?=-O3

CC = clang
CXX = clang++

bin: bin/$(APP)

target: bin
STD = -std=c++2a
CFLAGS = -Wall -Iinclude -nogpuinc #-std=c++2a

comma:= ,
star:= *

ifdef GPUFUN
CFLAGS += -DGPUFUN=$(GPUFUN)
endif

ifdef CPUFUN
CFLAGS += -DCPUFUN="$(CPUFUN)"
endif

ifdef PREFIX
CFLAGS += -DPREFIX=$(PREFIX)
endif

ifndef ARGS
ARGS=float,float
endif

# Finding the number of arguments as the number of commas plus one. The first comma is to increment by one.
ifdef NARGS
CFLAGS += -DNARGS=$(NARGS)
else
CFLAGS += -DNARGS=$(shell echo ,$(ARGS) | tr -cd , | wc -c)
endif

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

WRAPPERARGS=
WRAPPERNAMES=
getarg = $(word $1,$(subst $(comma), ,$(ARGS)))
ifneq ($(call getarg,1),)
WRAPPERARGS += $(call getarg,1) x
WRAPPERNAMES += x
endif
ifneq ($(call getarg,2),)
WRAPPERARGS += ,$(call getarg,2) y
WRAPPERNAMES += ,y
endif
ifneq ($(call getarg,3),)
WRAPPERARGS += ,$(call getarg,3) z
WRAPPERNAMES += ,z
endif

CFLAGS += -DWRAPPERARGS="$(WRAPPERARGS)" -DWRAPPERNAMES="$(WRAPPERNAMES)"

OMPTARGET?=amdgcn-amd-amdhsa
GPUARCH?=gfx906

CFLAGS += -fopenmp
CFLAGS += -fopenmp-targets=$(OMPTARGET) --offload-arch=$(GPUARCH)
CFLAGS += -fopenmp-offload-mandatory #--offload-device-only
LDFLAGS += -foffload-lto -L$(LLVMDIR)/install/lib -lomp
LDFLAGS += -L$(LLVMDIR)/install/lib -lomptarget
LDFLAGS += -L$(LLVMDIR)/install/lib -lomptarget.devicertl
LDFLAGS += -L$(LLVMDIR)/install/lib/x86_64-unknown-linux-gnu -lmgpu -lcgpu
LDFLAGS += -lm
#LDFLAGS += -Xlinker --verbose

# Compiling source to binary
bin/$(APP): src/$(APP).cpp
	$(CXX) $(STD) $(OPT) $(CFLAGS) src/$(APP).cpp -o bin/$(APP) $(LDFLAGS)

.PHONY: clean ir temps
clean:
	rm -rf bin/* ir/* *.core ast/* *.bc *.o *.s *.ii *.ll $(APP)*.out $(APP)*.img $(APP)*.i $(APP)*.s

ir:
	$(CXX) $(STD) $(OPT) $(CFLAGS) -emit-llvm -S src/$(APP).cpp -o ir/$(APP).ll

temps: clean
	rm -rf $(TMPOUT)
	mkdir -p $(TMPOUT)
	$(CC) $(OPT) $(CFLAGS) -save-temps src/$(APP).c -o $(APP).o $(LDFLAGS)
	mv $(APP)*.o $(TMPOUT)
	mv $(APP)*.bc $(TMPOUT)
	#mv $(APP)*.ii $(TMPOUT)
	mv $(APP)*.i $(TMPOUT)
	mv $(APP)*.s $(TMPOUT)
	mv $(APP)*.out $(TMPOUT)
	mv $(APP)*.img $(TMPOUT)
	llvm-dis $(TMPOUT)/*.bc
	llvm-objdump -d $(TMPOUT)/$(APP).o.amdgcn-amd-amdhsa.$(GPUARCH).o > $(TMPOUT)/$(APP).o.amdgcn-amd-amdhsa.$(GPUARCH).o.objdump

