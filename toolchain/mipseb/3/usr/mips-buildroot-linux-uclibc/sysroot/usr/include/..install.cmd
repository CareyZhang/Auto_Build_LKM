cmd_/home/ubuntu/my/buildroot/output/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/.install := perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include /home/ubuntu/my/buildroot/output/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include mips ; perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include /home/ubuntu/my/buildroot/output/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include mips ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/$$F; done; touch /home/ubuntu/my/buildroot/output/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/.install
