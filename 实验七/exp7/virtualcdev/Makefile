KERN_DIR = /home/embedded/new/meta-clanton/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux-clanton-standard-build   

all:
	make -C $(KERN_DIR) M=`pwd` modules 
clean:
	make -C $(KERN_DIR) M=`pwd` modules clean
	rm -rf modules.order
obj-m	+= virtualcdev.o
