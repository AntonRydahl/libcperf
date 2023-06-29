APP ?=driver64

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

CFLAGS += -fopenmp
CFLAGS += -fopenmp-targets=amdgcn-amd-amdhsa --offload-arch=gfx906
CFLAGS += -fopenmp-offload-mandatory #--offload-device-only
LDFLAGS += -L/g/g92/rydahl1/LLVM2/install/lib -lomptarget
LDFLAGS += -L/g/g92/rydahl1/LLVM2/install/lib -lomp
LDFLAGS += -L/g/g92/rydahl1/LLVM2/install/lib -lomptarget.devicertl
LDFLAGS += -L/g/g92/rydahl1/LLVM2/install/lib -L/g/g92/rydahl1/LLVM2/install/lib/x86_64-unknown-linux-gnu -lmgpu -lcgpu
#LDFLAGS += -Xlinker --verbose

# Compiling source to binary
bin/$(APP): src/$(APP).cpp
	$(CXX) $(CFLAGS) src/$(APP).cpp -o bin/$(APP) $(LDFLAGS)

.PHONY: clean ir
clean:
	rm -rf bin/* ir/* *.core ast/*

ir:
	$(CXX) $(CFLAGS) -emit-llvm -S src/$(APP).cpp -o ir/$(APP).ll
