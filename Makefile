APP ?=test

OPT ?=-O3

CC = clang
CXX = clang++

bin: bin/$(APP)

target: bin

CFLAGS = $(OPT) -Wall -std=c++2a -Iinclude

CFLAGS += -fopenmp
CFLAGS += -fopenmp-targets=amdgcn-amd-amdhsa --offload-arch=gfx906
CFLAGS += -fopenmp-offload-mandatory
LDFLAGS += -lomp -L/g/g92/rydahl1/LLVM2/install/lib -lomptarget -lomp -lomptarget.devicertl

# Compiling source to binary
bin/$(APP): src/$(APP).cpp
	$(CXX) $(CFLAGS) $(LDFLAGS) src/$(APP).cpp -o bin/$(APP)

.PHONY: clean ir
clean:
	rm -rf bin/* ir/* *.core ast/*

ir:
	$(CXX) $(CFLAGS) -emit-llvm -S src/$(APP).cpp -o ir/$(APP).ll