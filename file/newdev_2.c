#include <linux/cdev.h>
#include <linux/device.h>
#include <linux/errno.h>
#include <linux/major.h>
#include <linux/miscdevice.h>
#include <linux/kernel.h>
#include <linux/uaccess.h>
#include <linux/module.h>
#include <linux/init.h>
#include <linux/slab.h>
#include <linux/string.h>
#include <linux/fs.h>
#include <asm/segment.h>
#include <asm/uaccess.h>
#include <linux/buffer_head.h>

#define	DEV_MAJOR	0
#define	DEV_MINOR	0
#define	DEV_NAME	"test"
#define	CONFIG_PATH	"/firmadyne/md_config/" DEV_NAME ".config"

unsigned int *ioctl_cmd;
unsigned long *ioctl_arg;
long *ioctl_ret;
static int rules=0;
static char open_success=0;

struct mycdev{
	int len;
	unsigned char buffer[50];
	struct cdev cdev;
};

short devfs = 1;
static dev_t devno = MKDEV(DEV_MAJOR, DEV_MINOR);
struct class *cls;
static int ndevices = 1;
struct mycdev *gcd;

struct file *file_open(const char *path, int flags, int rights)
{
  struct file *filp = NULL;
  mm_segment_t oldfs;
  int err = 0;

  oldfs = get_fs();
  set_fs(get_ds());
  filp = filp_open(path, flags, rights);
  set_fs(oldfs);
  if (IS_ERR(filp)) {
    err = PTR_ERR(filp);
    return NULL;
  }
  return filp;
}

void file_close(struct file *file)
{
	filp_close(file, NULL);
}

int file_read(struct file *file, unsigned long long offset, unsigned char *data, unsigned int size)
{
	mm_segment_t oldfs;
	int ret;

	oldfs = get_fs();
	set_fs(get_ds());
	ret = vfs_read(file, data, size, &offset);
	set_fs(oldfs);
	return ret;
}

int file_write(struct file *file, unsigned long long offset, unsigned char *data, unsigned int size)
{
	mm_segment_t oldfs;
	int ret;

	oldfs = get_fs();
	set_fs(get_ds());
	ret = vfs_write(file, data, size, &offset);
	set_fs(oldfs);
	return ret;
}

static long ioctl(struct file *file, unsigned int cmd, unsigned long arg_ptr) {
	int i, ret=0;
	int copy_flag = 0;
	int found_rule = 0;
	unsigned long default_arg = 10;

	for(i = 0;i < rules;i++){
		if(cmd == *(ioctl_cmd + i)){
			copy_flag = copy_to_user((unsigned long*)arg_ptr,ioctl_arg + i,4);
			ret = *(ioctl_ret + i);
			found_rule = 1;
			break;
		}
	}
	if(!found_rule){
		copy_flag = copy_to_user((unsigned long*)arg_ptr,&default_arg,4);
	}
	return ret;
}

static int open(struct inode *inode, struct file *file) {
	return 0;
}

static int close(struct inode *inode, struct file *file) {
	return 0;
}

static ssize_t read(struct file *file, char __user *buf, size_t size, loff_t *offset) {
	return 0;
}

static ssize_t write(struct file *file, const char __user *buf, size_t size, loff_t *offset) {
	return 0;
}

static struct file_operations firmadyne_fops = {
	.owner		= THIS_MODULE,
	.open		= open,
	.read		= read,
	.write		= write,
	.release	= close,
	.unlocked_ioctl	= ioctl,
};

void parse_rule(char rule[],unsigned int size,int rule_index,unsigned int *ioctl_cmd,unsigned long *ioctl_arg,long *ioctl_ret){
	char *cmd, *arg, *ret, *cur;
	unsigned int cmd_to_uint;
	unsigned long arg_to_ul;
	long ret_to_l;
	char* const delim = "\t\n_ ";
	char rule_strip[size + 1];
	int i;
	for(i = 0;i < size; i++){
		rule_strip[i] = rule[i];
	}
	rule_strip[size] = '\0';

	cur = rule_strip;

	cmd = strsep(&cur, delim);
	arg = strsep(&cur, delim);
	ret = strsep(&cur, delim);

	strict_strtoul(cmd,16,&cmd_to_uint);
	strict_strtoul(arg,10,&arg_to_ul);
	strict_strtol(ret,10,&ret_to_l);

	ioctl_cmd[rule_index] = cmd_to_uint;
	ioctl_arg[rule_index] = arg_to_ul;
	ioctl_ret[rule_index] = ret_to_l;
}

static int firmadyne_init(void)
{	
	int ret;
	int i=0, n=0;
	struct file *fp;
	int temp=0;
	char buf;
	struct device *device;
	fp = file_open(CONFIG_PATH,O_RDONLY,0);
	if (fp == NULL){
		open_success=0;
	}
	else
	{
		int rules_limit = 5;
		const unsigned int chk_size = 256;
		unsigned int offset=0;
		unsigned int chk_index = 0;
		ioctl_cmd = kmalloc(sizeof(unsigned int) * rules_limit,GFP_KERNEL);
		ioctl_arg = kmalloc(sizeof(unsigned long) * rules_limit,GFP_KERNEL);
		ioctl_ret = kmalloc(sizeof(long) * rules_limit,GFP_KERNEL);
		char chunk[chk_size];
		while( ret = file_read(fp,offset++,&buf,1) > 0){
			if(chk_index >= chk_size){
				if (chk_index == chk_size){
					parse_rule(chunk,chk_size,rules,ioctl_cmd,ioctl_arg,ioctl_ret);
					rules += 1;
					chk_index += 1;
				}
				else if(buf == '\n'){
					chk_index = 0;
					chunk[chk_index] = buf;
				}
				else{
					continue;
				}
			}
			else{
				if(buf == '\n'){
					if(chk_index > 1){
						parse_rule(chunk,chk_index,rules,ioctl_cmd,ioctl_arg,ioctl_ret);
					}
					rules += 1;
					chk_index = 0;
				}
				else{
					chunk[chk_index] = buf;
					chk_index += 1;
				}
			}
			if(rules >= (rules_limit - 1)){
				rules_limit += 5;
				ioctl_cmd = krealloc(ioctl_cmd,sizeof(unsigned int) * rules_limit,GFP_KERNEL);
				ioctl_arg = krealloc(ioctl_arg,sizeof(unsigned long) * rules_limit,GFP_KERNEL);
				ioctl_ret = krealloc(ioctl_ret,sizeof(long) * rules_limit,GFP_KERNEL);
			}
		}
		if(chk_index > 0){
			parse_rule(chunk,chk_index,rules,ioctl_cmd,ioctl_arg,ioctl_ret);
		}
		file_close(fp);
		fp = NULL;
		kfree(fp);
		open_success=1;
	}

	gcd = kzalloc(ndevices * sizeof(struct mycdev), GFP_KERNEL);
	
	if(!gcd){
		return -ENOMEM;
	}

	ret = alloc_chrdev_region(&devno,0,ndevices, DEV_NAME);
	if(ret < 0){
		printk("Fail to register %s.",DEV_NAME);
		return ret;
	}
	cls = class_create(THIS_MODULE, DEV_NAME);
	if(IS_ERR(cls)){
		ret = PTR_ERR(cls);
		unregister_chrdev_region(devno, ndevices);
		printk("%s Fail to create class.",DEV_NAME);
	return ret;			
	}

	for(n = 0;n < ndevices;n++){
		cdev_init(&gcd[n].cdev,&firmadyne_fops);
		ret = cdev_add(&gcd[n].cdev,devno + n,1);
		if(ret<0){
			for(i=0;i<n;i++){
				cdev_del(&gcd[i].cdev);
			}
			class_destroy(cls);
			unregister_chrdev_region(devno, ndevices);
			printk("Fail to add device %s.",DEV_NAME);
			return ret;
		}
		device = device_create(cls,NULL,devno +n,NULL,DEV_NAME);
		if(IS_ERR(device)){
			ret = PTR_ERR(device);
			for(i=0;i<n;i++){
				device_destroy(cls,devno + i);
			}
			for(i=0;i<n;i++){
				cdev_del(&gcd[i].cdev);
			}
			class_destroy(cls);
			unregister_chrdev_region(devno, ndevices);
			printk("Fail to create device %s.",DEV_NAME);
			return ret;
		}
	}
	return ret;
}

static void firmadyne_exit(void)
{
	int i;
	for(i=0;i<ndevices;i++){
		device_destroy(cls,devno + i);
	}
	for(i=0;i<ndevices;i++){
		cdev_del(&gcd[i].cdev);
	}
	class_destroy(cls);
	unregister_chrdev_region(devno, ndevices);
	kfree(ioctl_cmd);
	kfree(ioctl_arg);
	kfree(ioctl_ret);
}

module_init(firmadyne_init);
module_exit(firmadyne_exit);
MODULE_LICENSE("Dual BSD/GPL");
