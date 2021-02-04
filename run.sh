cd rootfs
rm -rf ./rootfs.cpio.gz
./pack.sh
cd -
qemu-system-x86_64 "$@" -nographic -no-reboot -m 256 -kernel ./kernel/bzImage -initrd ./rootfs/rootfs.cpio.gz -append "panic=1 HOST=x86_64 console=ttyS0 $KARGS" ;echo -e '\e[?7h'
