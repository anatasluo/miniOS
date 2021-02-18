#!/bin/sh
mkdir fs
cd fs
gzip -dc ../rootfs.cpio.gz > rootfs.cpio
cpio -idmv < ./rootfs.cpio
rm -rf ./rootfs.cpio
cd -
