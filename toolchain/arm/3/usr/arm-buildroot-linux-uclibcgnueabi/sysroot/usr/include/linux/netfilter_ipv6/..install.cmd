cmd_/home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/netfilter_ipv6/.install := perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/linux/netfilter_ipv6 /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/netfilter_ipv6 arm ip6_tables.h ip6t_HL.h ip6t_LOG.h ip6t_REJECT.h ip6t_ah.h ip6t_frag.h ip6t_hl.h ip6t_ipv6header.h ip6t_mh.h ip6t_opts.h ip6t_rt.h; perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/linux/netfilter_ipv6 /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/netfilter_ipv6 arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/netfilter_ipv6/$$F; done; touch /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/netfilter_ipv6/.install
