#include <linux/init.h>
#include <linux/module.h>
#include <linux/fs.h>
#include <linux/kernel.h>
#include <linux/proc_fs.h>
#include <linux/uaccess.h>

char file_name[]={"abc"};
char dir_name[]={"defgh"};
char dir_name2[]={"rt3052"};
short procfs = 1;
short devfs = 1;
short need_dir = 0;
struct proc_dir_entry *file_dir ,*file_dir2;

static ssize_t read(struct file *file, char __user *buf, size_t size, loff_t *offset) {
	const char data[] = "0";
	loff_t count = min((loff_t) size, ARRAY_SIZE(data) - *offset);

	if (!devfs) {
		return -EINVAL;
	}

	if (*offset >= ARRAY_SIZE(data)) {
		return 0;
	}

	if (copy_to_user(buf, data + *offset, count)) {
		return -EFAULT;
	}

	*offset += count;
	return count;
}

static ssize_t write(struct file *file, const char __user *buf, size_t size, loff_t *offset) {
	if (!procfs) {
		return -EINVAL;
	}

	return size;
}

static const struct file_operations file_fops = {
		.read = read,
		.write = write,
};

 static int file_init(void){

    if(need_dir==2){
        if (!(file_dir2 = proc_mkdir(dir_name2, NULL))) {
            printk(KERN_WARNING": Cannot register procfs directory: %s!\n", dir_name2);
            return -1;
        }
        if (!(file_dir = proc_mkdir(dir_name, file_dir2))) {
            printk(KERN_WARNING": Cannot register procfs directory: %s!\n", dir_name);
            return -1;
        }
        if (!proc_create_data(file_name, 0666, file_dir, &file_fops, NULL)) {
            printk(KERN_WARNING": Cannot register procfs file: %s!\n", file_name);
            return -1;
        }
    }
    else if(need_dir==1){
        if (!(file_dir = proc_mkdir(dir_name, NULL))) {
            printk(KERN_WARNING": Cannot register procfs directory: %s!\n", dir_name);
            return -1;
        }
        if (!proc_create_data(file_name, 0666, file_dir, &file_fops, NULL)) {
            printk(KERN_WARNING": Cannot register procfs file: %s!\n", file_name);
            return -1;
        }
     }
    else{
        if (!proc_create_data(file_name, 0666, NULL, &file_fops, NULL)) {
            printk(KERN_WARNING": Cannot register procfs file: %s!\n", file_name);
            return -1;
        }
    }

     return 0;
 }
 static void file_exit(void){
     if(need_dir){
         remove_proc_entry(file_name, file_dir);
         remove_proc_entry(dir_name, file_dir2);
         if(need_dir==2)
            remove_proc_entry(dir_name2, NULL);
     }
     else{
         remove_proc_entry(file_name, NULL);
     }

 }
 module_init(file_init);
 module_exit(file_exit);
 MODULE_LICENSE("Dual BSD/GPL");