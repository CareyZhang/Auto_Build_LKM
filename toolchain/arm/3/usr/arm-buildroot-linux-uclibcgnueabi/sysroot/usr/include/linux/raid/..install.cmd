cmd_/home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/raid/.install := perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/linux/raid /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/raid arm md_p.h md_u.h; perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/linux/raid /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/raid arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/raid/$$F; done; touch /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/raid/.install
