cmd_/home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/wimax/.install := perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/linux/wimax /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/wimax arm i2400m.h; perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/linux/wimax /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/wimax arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/wimax/$$F; done; touch /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/wimax/.install