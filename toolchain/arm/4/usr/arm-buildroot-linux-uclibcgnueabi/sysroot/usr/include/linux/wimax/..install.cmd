cmd_/home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/wimax/.install := /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/wimax ./include/uapi/linux/wimax i2400m.h; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/wimax ./include/linux/wimax ; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/wimax ./include/generated/uapi/linux/wimax ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/wimax/$$F; done; touch /home/ubuntu/my/buildroot/output/host/arm-buildroot-linux-uclibcgnueabi/sysroot/usr/include/linux/wimax/.install
