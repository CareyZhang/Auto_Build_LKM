cmd_/home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/linux/hdlc/.install := perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/linux/hdlc /home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/linux/hdlc mips ioctl.h; perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/linux/hdlc /home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/linux/hdlc mips ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/linux/hdlc/$$F; done; touch /home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/linux/hdlc/.install
