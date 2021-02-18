#!/bin/sh
rm -rf rootfs.cpio.gz
cd ./fs
find . | cpio -o -H newc | gzip > ../rootfs.cpio.gz
cd -
