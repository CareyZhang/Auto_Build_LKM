cmd_/home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/nfsd/.install := perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/linux/nfsd /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/nfsd arm debug.h export.h nfsfh.h stats.h; perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/linux/nfsd /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/nfsd arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/nfsd/$$F; done; touch /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/nfsd/.install