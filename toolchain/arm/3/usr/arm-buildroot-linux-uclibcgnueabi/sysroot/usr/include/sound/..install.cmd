cmd_/home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/sound/.install := perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/sound /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/sound arm asequencer.h asound.h asound_fm.h emu10k1.h hdsp.h hdspm.h sb16_csp.h sfnt_info.h; perl scripts/headers_install.pl /home/ubuntu/my/buildroot/output/build/linux-headers-3.2.77/include/sound /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/sound arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/sound/$$F; done; touch /home/ubuntu/my/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/sound/.install
