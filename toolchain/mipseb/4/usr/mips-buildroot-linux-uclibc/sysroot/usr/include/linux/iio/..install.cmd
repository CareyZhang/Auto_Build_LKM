cmd_/home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/iio/.install := /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/iio ./include/uapi/linux/iio events.h types.h; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/iio ./include/linux/iio ; /bin/bash scripts/headers_install.sh /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/iio ./include/generated/uapi/linux/iio ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/iio/$$F; done; touch /home/ubuntu/my/buildroot/output/host/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/iio/.install
