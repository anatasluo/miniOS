PWD := $(shell pwd)
ARCH ?= x86_64
COMPILER ?= ""
KERNEL ?= /lib/modules/$(shell uname -r)/build
obj-m := simple.o

all:
	$(MAKE) -C $(KERNEL) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(COMPILER) modules

clean:
	$(MAKE) -C $(KERNEL) M=$(PWD) ARCH=$(ARCH) clean