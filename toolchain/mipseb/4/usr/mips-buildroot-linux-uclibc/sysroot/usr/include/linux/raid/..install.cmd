cmd_/home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/raid/.install := /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/raid ./include/uapi/linux/raid md_p.h md_u.h; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/raid ./include/linux/raid ; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/raid ./include/generated/uapi/linux/raid ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/raid/$$F; done; touch /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/raid/.install
