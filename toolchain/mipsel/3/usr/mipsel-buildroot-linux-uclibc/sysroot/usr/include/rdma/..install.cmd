cmd_/home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/rdma/.install := perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/rdma /home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/rdma mips ib_user_cm.h ib_user_mad.h ib_user_sa.h ib_user_verbs.h rdma_netlink.h rdma_user_cm.h; perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/rdma /home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/rdma mips ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/rdma/$$F; done; touch /home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/rdma/.install
