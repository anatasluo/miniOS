#!/bin/sh

cd ./fs
find . | cpio -o -H newc | gzip > ../rootfs.cpio.gz
