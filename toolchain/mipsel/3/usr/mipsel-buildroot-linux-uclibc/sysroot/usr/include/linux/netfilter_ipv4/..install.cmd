cmd_/home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/linux/netfilter_ipv4/.install := perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/linux/netfilter_ipv4 /home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/linux/netfilter_ipv4 mips ip_queue.h ip_tables.h ipt_CLUSTERIP.h ipt_ECN.h ipt_LOG.h ipt_REJECT.h ipt_SAME.h ipt_TTL.h ipt_ULOG.h ipt_addrtype.h ipt_ah.h ipt_ecn.h ipt_realm.h ipt_ttl.h nf_nat.h; perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/linux/netfilter_ipv4 /home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/linux/netfilter_ipv4 mips ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/linux/netfilter_ipv4/$$F; done; touch /home/ubuntu/my/buildroot/output/host/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/include/linux/netfilter_ipv4/.install
