cmd_/home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/mmc/.install := /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/mmc ./include/uapi/linux/mmc ioctl.h; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/mmc ./include/linux/mmc ; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/mmc ./include/generated/uapi/linux/mmc ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/mmc/$$F; done; touch /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/mmc/.install