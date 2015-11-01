#include <linux/module.h>
#include <linux/init.h>
#include <linux/device.h>
#include<linux/fs.h>

#define DEVICE_NAME     "simplecdev"  /* 加载模块后，执行”cat /proc/devices”命令看到的设备名称 */
#define SIMPLECDEV_MAJOR       0     /* 主设备号 */
int major = 0;
static struct class *simplecdev_class;
struct device *simplecdev_device;
/*
 *应用程序中对设备文件调用open系统调用就会调用simplecdev_open函数
 */
static int simplecdev_open(struct inode *inode, struct file *filp)
{
	printk("\nsimplecdev_open is called!\n");
	return 0;
}
static int simplecdev_release(struct inode *inode, struct file *filp)
{
	printk("\nsimplecdev_release is called!\n");
	return 0;
}

/*
 *应用程序中对设备文件调用read系统调用就会调用simplecdev_read函数
 */
static ssize_t simplecdev_read(struct file *file, char __user *buf, size_t count, loff_t *ppos)
{
	printk("\nsimplecdev_read is called!\n");
	return count;
}

/*
 * 应用程序对设备文件调用write系统调用时就会调用simplecdev_write函数
 */
static ssize_t simplecdev_write(struct file *file, const char __user *buf, size_t count, loff_t * ppos)
{
	printk("\nsimplecdev_write is called!\n");
	return count;
}
/*
 * 应用程序对设备文件调用ioctl系统调用时就会调用simplecdev_ioctl函数
 */
long  simplecdev_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{
	printk("\nsimplecdev_ioctl iscalled!\n");
	return 0;
}

/* 这个结构是字符设备驱动程序的核心
 * 当应用程序操作设备文件时所调用的open、read、write等函数，
 * 最终会调用这个结构中指定的对应函数
 */
static struct file_operations simplecdev_fops = {
	.owner  = THIS_MODULE,    /* 这是一个宏，推向编译模块时自动创建的__this_module变量 */
	.open   = simplecdev_open,     
	.read   = simplecdev_read,
	.write	= simplecdev_write,	   
	.release = simplecdev_release,
	.unlocked_ioctl = simplecdev_ioctl
};

/*
 * 执行insmod命令时就会调用这个函数 
 */
static int __init simplecdev_init(void)
{

	/* 注册字符设备
	 * 参数为主设备号、设备名字、file_operations结构；
	 * 这样，主设备号就和具体的file_operations结构联系起来了，
	 * 操作主设备号为SIMPLECDEV_MAJOR的设备文件时，就会调用simplecdev_fops中的相关成员函数
	 * SIMPLECDEV_MAJOR可以设为0，表示由内核自动分配主设备号
	 */
	major = register_chrdev(SIMPLECDEV_MAJOR, DEVICE_NAME, &simplecdev_fops);
	if (major < 0) 
	{
		printk(DEVICE_NAME " can't register major number\n");
		return major;
	}


	simplecdev_class = class_create(THIS_MODULE, "simplecdev");
	simplecdev_device = device_create(simplecdev_class, 0, MKDEV(major, 0),
					  0, "%s", DEVICE_NAME);

	if (IS_ERR(simplecdev_device)) {
		printk("device create err\n");
	}

	
	printk(DEVICE_NAME " initialized\n");
	return 0;
}



/*
 * 执行rmmod命令时就会调用这个函数 
 */
static void __exit simplecdev_exit(void)
{
    /* 卸载驱动程序 */
	device_destroy(simplecdev_class, MKDEV(major, 0));
	class_destroy(simplecdev_class);
	unregister_chrdev(SIMPLECDEV_MAJOR, DEVICE_NAME);
}



/* 这两行指定驱动程序的初始化函数和卸载函数 */
module_init(simplecdev_init);
module_exit(simplecdev_exit);

/* 描述驱动程序的一些信息 */
MODULE_AUTHOR("author");
MODULE_VERSION("0.1.0");
MODULE_DESCRIPTION("SIMPLECDEV Driver");
MODULE_LICENSE("GPL");
