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
	qemu-system-x86_64  -s -nographic -no-reboot -m 256 -kernel ./kernel/bzImage -initrd ./rootfs/rootfs.cpio.gz -append "nokaslr panic=1 HOST=x86_64 console=ttyS0" ;echo -e '\e[?7h'
fi
