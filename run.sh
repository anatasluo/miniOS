#!/bin/sh

if [ "$1" = "unpack" ];then
	cd rootfs
	mkdir fs
	qemu-img convert -p -O raw rootfs.qcow2 rootfs.raw
	sudo mount -o loop rootfs.raw fs
	cd -
elif [ "$1" = "pack" ];then
	cd rootfs
	sudo umount ./fs
	qemu-img convert -f raw -O qcow2 rootfs.raw rootfs.qcow2
	rm -rf ./fs
	cd -
else
	qemu-system-riscv64 -M virt -m 256M -nographic \
		-kernel ./kernel/Image \
		-drive file=rootfs/rootfs.qcow2,format=qcow2,id=hd0 \
		-device virtio-blk-device,drive=hd0 \
		-append 'root=/dev/vda rw console=ttyS0' \
		-netdev user,id=mynet \
		-device virtio-net-pci,netdev=mynet -nographic 
fi
