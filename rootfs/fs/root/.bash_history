make install
cd ../automake-1.16.5
ls
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.5
make -j20
make install
cd ../openssl-3.0.5
./config --prefix=/usr                  --openssldir=/etc/ssl          --libdir=lib                   shared                         zlib-dynamic
make -j20
sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install
mv -v /usr/share/doc/openssl /usr/share/doc/openssl-3.0.5
cp -vfr doc/* /usr/share/doc/openssl-3.0.5
cd ../kmod-30
./configure --prefix=/usr                      --sysconfdir=/etc                  --with-openssl                     --with-xz                          --with-zstd                        --with-zlib
make -j20
make install
for target in depmod insmod modinfo modprobe rmmod; do   ln -sfv ../bin/kmod /usr/sbin/$target; done
ln -sfv kmod /usr/bin/lsmod
cd ../elfutils-0.187
./configure --prefix=/usr                            --disable-debuginfod                     --enable-libdebuginfod=dummy
make -j20
make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /usr/lib/libelf.a
cd ../libffi-3.4.2
./configure --prefix=/usr                      --disable-static                   --with-gcc-arch=native             --disable-exec-static-tramp
make -j20
make install
cd ..
rm -rf Python-3.10.6
tar -xvf ./Python-3.10.6.tar.xz 
cd Python-3.10.6
./configure --prefix=/usr                    --enable-shared                  --with-system-expat              --with-system-ffi                --enable-optimizations
make -j20
make install
cat > /etc/pip.conf << EOF
[global]
root-user-action = ignore
disable-pip-version-check = true
EOF

install -v -dm755 /usr/share/doc/python-3.10.6/html
tar --strip-components=1      --no-same-owner           --no-same-permissions     -C /usr/share/doc/python-3.10.6/html     -xvf ../python-3.10.6-docs-html.tar.bz2
cd ../wheel-0.37.1
pip3 install --no-index $PWD
cd ../ninja-1.11.0
export NINJAJOBS=4
export NINJAJOBS=20
sed -i '/int Guess/a \
  int   j = 0;\
  char* jobs = getenv( "NINJAJOBS" );\
  if ( jobs != NULL ) j = atoi( jobs );\
  if ( j > 0 ) return j;\
' src/ninja.cc
python3 configure.py --bootstrap
./ninja ninja_test
./ninja_test --gtest_filter=-SubprocessTest.SetWithLots
install -vm755 ninja /usr/bin/
install -vDm644 misc/bash-completion /usr/share/bash-completion/completions/ninja
install -vDm644 misc/zsh-completion  /usr/share/zsh/site-functions/_ninja
ls
cd ../meson-0.63.1
pip3 wheel -w dist --no-build-isolation --no-deps $PWD
pip3 install --no-index --find-links dist meson
install -vDm644 data/shell-completions/bash/meson /usr/share/bash-completion/completions/meson
install -vDm644 data/shell-completions/zsh/_meson /usr/share/zsh/site-functions/_meson
cd ../coreutils-9.1
patch -Np1 -i ../coreutils-9.1-i18n-1.patch
patch -Np1 -i ../coreutils-9.1-i18n-1.patch
autoreconf -fiv
FORCE_UNSAFE_CONFIGURE=1 ./configure             --prefix=/usr                        --enable-no-install-program=kill,uptim
make -j20
make install
mv -v /usr/bin/chroot /usr/sbin
mv -v /usr/share/man/man1/chroot.1 /usr/share/man/man8/chroot.8
sed -i 's/"1"/"8"/' /usr/share/man/man8/chroot.8
cd ../check-0.15.2
./configure --prefix=/usr --disable-static
make -j20
make docdir=/usr/share/doc/check-0.15.2 install
cd ../diffutils-3.8
./configure --prefix=/usr
make -j20
make install
cd ../gawk-5.1.1
sed -i 's/extras//' Makefile.in
./configure --prefix=/usr
make -j20
make install
mkdir -pv                                   /usr/share/doc/gawk-5.1.1
cp    -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-5.1.1
cd ../findutils-4.9.0
case $(uname -m) in     i?86)   TIME_T_32_BIT_OK=yes ./configure --prefix=/usr --localstatedir=/var/lib/locate ;;     x86_64) ./configure --prefix=/usr --localstatedir=/var/lib/locate ;; esac
make -j20
make install
PAGE=<paper_size> ./configure --prefix=/usr
PAGE=A4 ./configure --prefix=/usr
make -j1
make install
cd ../grub-2.06
./configure --prefix=/usr                      --sysconfdir=/etc                  --disable-efiemu                   --disable-werror
make -j20
make install
mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions
cd ../gzip-1.12
./configure --prefix=/usr
make install
cd ../iproute2-5.19.0
sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8
make NETNS_RUN_DIR=/run/netns
make SBINDIR=/usr/sbin install
mkdir -pv             /usr/share/doc/iproute2-5.19.0
cp -v COPYING README* /usr/share/doc/iproute2-5.19.0
cd ../kmod-30
patch -Np1 -i ../kbd-2.5.1-backspace-1.patch
sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in
cd ..
rm -rf kmod-30
tar -xf ./kmod-30.tar.xz 
cd kmod-30
patch -Np1 -i ../kbd-2.5.1-backspace-1.patch
vim ../kbd-2.5.1-backspace-1.patch 
cat ../kbd-2.5.1-backspace-1.patch 
find . -name "dvorak-l.map"
find . -name "keymaps"
ls
sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in
cd ..
rm -rf kmod-30
cd kbd-2.5.1
patch -Np1 -i ../kbd-2.5.1-backspace-1.patch
sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in
./configure --prefix=/usr --disable-vlock
make -j20
make install
mkdir -pv           /usr/share/doc/kbd-2.5.1
cp -R -v docs/doc/* /usr/share/doc/kbd-2.5.1
cd ../libpipeline-1.5.6
./configure --prefix=/usr
make -j20
make install
cd ../make-4.3
./configure --prefix=/usr
make -j20
make install
cd ../patch-2.7.6
./configure --prefix=/usr
make -j20
make install
cd ../tar-1.34
FORCE_UNSAFE_CONFIGURE=1  ./configure --prefix=/usr
make -j20
make install
make -C doc install-html docdir=/usr/share/doc/tar-1.34
./configure --prefix=/usr
make -j20
make install
make TEXMF=/usr/share/texmf install-tex
make install
make -C doc install-html docdir=/usr/share/doc/tar-1.34
cd ../texinfo-6.8
./configure --prefix=/usr
make -j20
make install
make TEXMF=/usr/share/texmf install-tex
pushd /usr/share/info
  rm -v dir
  for f in *;     do install-info $f dir 2>/dev/null;   done
popd
info bison
cd ../vim-9.0.0228
echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h
./configure --prefix=/usr
make -j20
make install
ln -sv vim /usr/bin/vi
for L in  /usr/share/man/{,*/}man1/vim.1; do     ln -sv vim.1 $(dirname $L)/vi.1; done
ln -sv ../vim/vim90/doc /usr/share/doc/vim-9.0.0228
cat > /etc/vimrc << "EOF"
" Begin /etc/vimrc

" Ensure defaults are set before customizing settings, not after
source $VIMRUNTIME/defaults.vim
let skip_defaults_vim=1

set nocompatible
set backspace=2
set mouse=
syntax on
if (&term == "xterm") || (&term == "putty")
  set background=dark
endif

" End /etc/vimrc
EOF

vim -c ':options'
vim /etc/vimrc
vim /etc/vimrc
vim /etc/vimrc
vim /etc/vimrc
cd ../eudev-3.2.11
./configure --prefix=/usr                       --bindir=/usr/sbin                  --sysconfdir=/etc                   --enable-manpages                   --disable-static
make -j20
mkdir -pv /usr/lib/udev/rules.d
mkdir -pv /etc/udev/rules.d
make install
tar -xvf ../udev-lfs-20171102.tar.xz
make -f udev-lfs-20171102/Makefile.lfs install
tar -xvf ../udev-lfs-20171102.tar.xz
make -f udev-lfs-20171102/Makefile.lfs install
udevadm hwdb --update
cd ../man-db-2.10.2
./configure --prefix=/usr                                     --docdir=/usr/share/doc/man-db-2.10.2             --sysconfdir=/etc                                 --disable-setuid                                  --enable-cache-owner=bin                          --with-browser=/usr/bin/lynx                      --with-vgrind=/usr/bin/vgrind                     --with-grap=/usr/bin/grap                         --with-systemdtmpfilesdir=                        --with-systemdsystemunitdir=
make -j20
make install
make -j20
make -j
cd ..
rm -rf man-db-2.10.2
tar -xf ./man-db-2.10.2.tar.xz 
cd man-db-2.10.2
./configure --prefix=/usr                                     --docdir=/usr/share/doc/man-db-2.10.2             --sysconfdir=/etc                                 --disable-setuid                                  --enable-cache-owner=bin                          --with-browser=/usr/bin/lynx                      --with-vgrind=/usr/bin/vgrind                     --with-grap=/usr/bin/grap                         --with-systemdtmpfilesdir=                        --with-systemdsystemunitdir=
make 
cd ../groff-1.22.4
PAGE=letter ./configure --prefix=/usr
make -j1
make install
cd -
make 
vim man.c+347
vim man.c +347
ls
find . -name "main.c"
grep -rn "html_pager"
vim ./src/main.c
cd src/
vim man.c 
cd ..
make 
vim src/man.c 
grep -rn "hTROFF_IS_GROFFtml_pager"
vim src/man.c 
grep -rn "hTROFF_IS_GROFFtml_pager"
vim src/man.c 
make 
make install
vim src/man.c 
cd ../procps-ng-4.0.0.tar.xz 
cd ../procps-ng-4.0.0
./configure --prefix=/usr                                        --docdir=/usr/share/doc/procps-ng-4.0.0             --disable-static                                     --disable-kill
make -j20
make install
cd ../util-linux-2.38.1
./configure ADJTIME_PATH=/var/lib/hwclock/adjtime               --bindir=/usr/bin                --libdir=/usr/lib                --sbindir=/usr/sbin              --docdir=/usr/share/doc/util-linux-2.38.1             --disable-chfn-chsh              --disable-login                  --disable-nologin                --disable-su                     --disable-setpriv                --disable-runuser                --disable-pylibmount             --disable-static                 --without-python                 --without-systemd                --without-systemdsystemunitdir
make -j20
make install
cd ../e2fsprogs-1.46.5.tar.gz 
cd ../e2fsprogs-1.46.5
mkdir -v build
cd       build
../configure --prefix=/usr                        --sysconfdir=/etc                    --enable-elf-shlibs                  --disable-libblkid                   --disable-libuuid                    --disable-uuidd                      --disable-fsck
make -j20
make install
rm -fv /usr/lib/{libcom_err,libe2p,libext2fs,libss}.a
gunzip -v /usr/share/info/libext2fs.info.gz
install-info --dir-file=/usr/share/info/dir /usr/share/info/libext2fs.info
makeinfo -o      doc/com_err.info ../lib/et/com_err.texinfo
install -v -m644 doc/com_err.info /usr/share/info
install-info --dir-file=/usr/share/info/dir /usr/share/info/com_err.info
cd ..c
cd ..
cd ../sysklogd-1.5.1
sed -i '/Error loading kernel symbols/{n;n;d}' ksym_mod.c
sed -i 's/union wait/int/' syslogd.c
make -j20
make BINDIR=/sbin install
cat > /etc/syslog.conf << "EOF"
# Begin /etc/syslog.conf

auth,authpriv.* -/var/log/auth.log
*.*;auth,authpriv.none -/var/log/sys.log
daemon.* -/var/log/daemon.log
kern.* -/var/log/kern.log
mail.* -/var/log/mail.log
user.* -/var/log/user.log
*.emerg *

# End /etc/syslog.conf
EOF

cd ../sysvinit-3.04
cd ../sysvinit-3.04
patch -Np1 -i ../sysvinit-3.04-consolidated-1.patch
make -j20
make install
exit
save_usrlib="$(cd /usr/lib; ls ld-linux*[^g])
             libc.so.6
             libthread_db.so.1
             libquadmath.so.0.0.0
             libstdc++.so.6.0.30
             libitm.so.1.0.0
             libatomic.so.1.2.0"
cd /usr/lib
for LIB in $save_usrlib; do     objcopy --only-keep-debug $LIB $LIB.dbg;     cp $LIB /tmp/$LIB;     strip --strip-unneeded /tmp/$LIB;     objcopy --add-gnu-debuglink=$LIB.dbg /tmp/$LIB;     install -vm755 /tmp/$LIB /usr/lib;     rm /tmp/$LIB; done
online_usrbin="bash find strip"
online_usrlib="libbfd-2.39.so
               libhistory.so.8.1
               libncursesw.so.6.3
               libm.so.6
               libreadline.so.8.1
               libz.so.1.2.12
               $(cd /usr/lib; find libnss*.so* -type f)"
for BIN in $online_usrbin; do     cp /usr/bin/$BIN /tmp/$BIN;     strip --strip-unneeded /tmp/$BIN;     install -vm755 /tmp/$BIN /usr/bin;     rm /tmp/$BIN; done
for LIB in $online_usrlib; do     cp /usr/lib/$LIB /tmp/$LIB;     strip --strip-unneeded /tmp/$LIB;     install -vm755 /tmp/$LIB /usr/lib;     rm /tmp/$LIB; done
for i in $(find /usr/lib -type f -name \*.so* ! -name \*dbg)          $(find /usr/lib -type f -name \*.a)                          $(find /usr/{bin,sbin,libexec} -type f); do     case "$online_usrbin $online_usrlib $save_usrlib" in         *$(basename $i)* )             ;;         * ) strip --strip-unneeded $i;             ;;     esac; done
unset BIN LIB save_usrlib online_usrbin online_usrlib
rm -rf /tmp/*
find /usr/lib /usr/libexec -name \*.la -delete
find /usr -depth -name $(uname -m)-lfs-linux-gnu\* | xargs rm -rf
userdel -r tester
cat /etc/passwd
cd ..
ls
cd ..
cd sources/
ls
tar -xf ./lfs-bootscripts-20220723.tar.xz 
make install
ls
cd lfs-bootscripts-20220723
make install
bash /usr/lib/udev/init-net-rules.sh
cat /etc/udev/rules.d/70-persistent-net.rules
cd ..
rm -rf *
ls
cd ..
ls
cd /etc/sysconfig/
ls
ip addr
ssh 192.168.5.105
vim /etc/resolv.conf
echo "miniOS" > /etc/hostname
cat > /etc/inittab << "EOF"
# Begin /etc/inittab

id:3:initdefault:

si::sysinit:/etc/rc.d/init.d/rc S

l0:0:wait:/etc/rc.d/init.d/rc 0
l1:S1:wait:/etc/rc.d/init.d/rc 1
l2:2:wait:/etc/rc.d/init.d/rc 2
l3:3:wait:/etc/rc.d/init.d/rc 3
l4:4:wait:/etc/rc.d/init.d/rc 4
l5:5:wait:/etc/rc.d/init.d/rc 5
l6:6:wait:/etc/rc.d/init.d/rc 6

ca:12345:ctrlaltdel:/sbin/shutdown -t1 -a -r now

su:S06:once:/sbin/sulogin
s1:1:respawn:/sbin/sulogin

1:2345:respawn:/sbin/agetty --noclear tty1 9600
2:2345:respawn:/sbin/agetty tty2 9600
3:2345:respawn:/sbin/agetty tty3 9600
4:2345:respawn:/sbin/agetty tty4 9600
5:2345:respawn:/sbin/agetty tty5 9600
6:2345:respawn:/sbin/agetty tty6 9600

# End /etc/inittab
EOF

cat /etc/inittab
cat > /etc/sysconfig/clock << "EOF"
# Begin /etc/sysconfig/clock

UTC=1

# Set this to any options you might need to give to hwclock,
# such as machine hardware clock type for Alphas.
CLOCKPARAMS=

# End /etc/sysconfig/clock
EOF

locale -a
LC_ALL=<locale 名> locale language
LC_ALL=en_US locale language
LC_ALL=en_US locale charmap
LC_ALL=en_US locale int_curr_symbol
LC_ALL=en_US locale int_prefix
cat > /etc/profile << "EOF"
# Begin /etc/profile

export LANG=en.US.ISO-8859-1

# End /etc/profile
EOF

ls
cat /etc/profile 
cat > /etc/inputrc << "EOF"
# Begin /etc/inputrc
# Modified by Chris Lynn <roryo@roryo.dynup.net>

# Allow the command prompt to wrap to the next line
set horizontal-scroll-mode Off

# Enable 8-bit input
set meta-flag On
set input-meta On

# Turns off 8th bit stripping
set convert-meta Off

# Keep the 8th bit for display
set output-meta On

# none, visible or audible
set bell-style none

# All of the following map the escape sequence of the value
# contained in the 1st argument to the readline specific functions
"\eOd": backward-word
"\eOc": forward-word

# for linux console
"\e[1~": beginning-of-line
"\e[4~": end-of-line
"\e[5~": beginning-of-history
"\e[6~": end-of-history
"\e[3~": delete-char
"\e[2~": quoted-insert

# for xterm
"\eOH": beginning-of-line
"\eOF": end-of-line

# for Konsole
"\e[H": beginning-of-line
"\e[F": end-of-line

# End /etc/inputrc
EOF

cat /etc/inputrc 
cat > /etc/shells << "EOF"
# Begin /etc/shells

/bin/sh
/bin/bash

# End /etc/shells
EOF

fdisk -l
cat > /etc/fstab << "EOF"
# Begin /etc/fstab

# 文件系统     挂载点       类型     选项                转储  检查
#                                                              顺序

/dev/sda       /            ext4    defaults            1     1
proc           /proc        proc     nosuid,noexec,nodev 0     0
sysfs          /sys         sysfs    nosuid,noexec,nodev 0     0
devpts         /dev/pts     devpts   gid=5,mode=620      0     0
tmpfs          /run         tmpfs    defaults            0     0
devtmpfs       /dev         devtmpfs mode=0755,nosuid    0     0

# End /etc/fstab
EOF

cat /etc/fstab 
hdparm -I /dev/sda | grep NCQ
echo 11.2 > /etc/lfs-release
cat > /etc/lsb-release << "EOF"
DISTRIB_ID="Linux From Scratch"
DISTRIB_RELEASE="11.2"
DISTRIB_CODENAME="<your name here>"
DISTRIB_DESCRIPTION="Linux From Scratch"
EOF

cat > /etc/os-release << "EOF"
NAME="Linux From Scratch"
VERSION="11.2"
ID=lfs
PRETTY_NAME="Linux From Scratch 11.2"
VERSION_CODENAME="<your name here>"
EOF

logout
