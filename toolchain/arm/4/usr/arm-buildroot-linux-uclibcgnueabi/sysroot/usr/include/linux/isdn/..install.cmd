cmd_/home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/isdn/.install := /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/isdn ./include/uapi/linux/isdn capicmd.h; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/isdn ./include/linux/isdn ; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/isdn ./include/generated/uapi/linux/isdn ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/isdn/$$F; done; touch /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/isdn/.install
