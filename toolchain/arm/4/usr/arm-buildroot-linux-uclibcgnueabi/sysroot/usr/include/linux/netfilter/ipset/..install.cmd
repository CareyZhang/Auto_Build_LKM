cmd_/home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/netfilter/ipset/.install := /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/netfilter/ipset ./include/uapi/linux/netfilter/ipset ip_set.h ip_set_bitmap.h ip_set_hash.h ip_set_list.h; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/netfilter/ipset ./include/linux/netfilter/ipset ; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/netfilter/ipset ./include/generated/uapi/linux/netfilter/ipset ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/netfilter/ipset/$$F; done; touch /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/netfilter/ipset/.install
