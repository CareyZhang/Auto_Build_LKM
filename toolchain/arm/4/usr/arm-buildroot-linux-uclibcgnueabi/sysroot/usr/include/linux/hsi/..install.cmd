cmd_/home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/hsi/.install := /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/hsi ./include/uapi/linux/hsi cs-protocol.h hsi_char.h; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/hsi ./include/linux/hsi ; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/hsi ./include/generated/uapi/linux/hsi ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/hsi/$$F; done; touch /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/hsi/.install