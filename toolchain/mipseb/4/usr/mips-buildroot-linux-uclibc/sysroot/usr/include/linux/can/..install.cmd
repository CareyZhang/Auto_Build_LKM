cmd_/home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/can/.install := /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/can ./include/uapi/linux/can bcm.h error.h gw.h netlink.h raw.h; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/can ./include/linux/can ; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/can ./include/generated/uapi/linux/can ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/can/$$F; done; touch /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/can/.install
