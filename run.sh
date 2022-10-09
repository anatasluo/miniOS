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
	qemu-system-x86_64 -s -M pc -cpu host --enable-kvm -smp 2 \
		-kernel ./kernel/bzImage \
		-m 4G -object memory-backend-file,id=mem,size=4G,mem-path=/dev/shm,share=on -numa node,memdev=mem \
		-append "panic=1 HOST=x86_64 console=ttyS0 rootfstype=virtiofs root=myfs rw" \
		-chardev socket,id=char0,path=/tmp/anatasluo \
		-device vhost-user-fs-pci,queue-size=1024,chardev=char0,tag=myfs \
		-chardev stdio,mux=on,id=mon -mon chardev=mon,mode=readline \
		-device virtio-serial-pci -device virtconsole,chardev=mon \
		-vga none -display none
fi
