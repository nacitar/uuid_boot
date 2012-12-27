uuid_boot
=========

An initramfs that enables you to boot the linux kernel mounting filesystems by UUID.
This initramfs also ensures that devtmpfs is mounted to /dev for the kernel if possible.


You can boot with the boot line root=UUID=<SOME_UUID>, you can get the UUID from blkid.

You can use a script provided by the kernel sources to aid you in how to specify files to add to the initramfs.
Do this by creating the directory structure here then running:
    bash /usr/src/linux/scripts/gen_initramfs_list.sh .

Note, that +x may not be set on the script, hence the "bash" call.

The actual initramfs data lives in initramfs-data.


installation
------------
    cd /usr/src/linux
    sudo git clone git://github.com/nacitar/uuid_boot.git
    sudo ./install_use_flags.sh

Now simply add the initramfs file to the kernel:
    /usr/src/uuid_boot/initramfs
