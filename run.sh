#!/bin/sh

if [ "$1" = "unpack" ];then
	cd rootfs
	./unpack.sh
	cd -
elif [ "$1" = "pack" ];then
	cd rootfs
	./pack.sh
	cd -
else
	qemu-system-aarch64 -smp 4 -M virt -m 1024 -cpu cortex-a53 \
		-kernel /home/anatasluo/Git/linux/arch/arm64/boot/Image \
		-initrd ./rootfs/rootfs.cpio.gz \
		-append 'nokaslr root=/dev/vda console=ttyAMA0' \
		-netdev user,id=mynet \
		-device virtio-net-pci,netdev=mynet -nographic 
fi
