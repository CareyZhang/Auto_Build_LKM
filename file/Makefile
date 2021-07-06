obj-m += newdev.o

all:
	make ARCH=arch -C ../../linux CROSS_COMPILE=cross_compiler M=$(PWD) modules

clean:
	make ARCH=arch -C ../../linux CROSS_COMPILE=cross_compiler M=$(PWD) clean
