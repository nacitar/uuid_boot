uuid\_boot
==========

An initramfs that enables you to boot the linux kernel mounting filesystems by UUID.

This initramfs also ensures that either a tmpfs with mdev nodes or a devtmpfs is mounted to /dev for the kernel if possible.

You can boot with the boot line root=UUID=[unquoted lowercase uuid], you can get the UUID from blkid.

You can also add "rescue" to the boot line to drop to a rescue shell after trying to mount the root filesystem.

If the root filesystem cannot be mounted, you automatically drop to the rescue shell anyway.

You can use a script provided by the kernel sources to aid you in how to specify files to add to the initramfs.  Do this by creating the directory structure here then running:

    bash /usr/src/linux/scripts/gen_initramfs_list.sh .

Note, that +x may not be set on the script, hence the "bash" call.

The actual initramfs data lives in initramfs-data.


installation
------------
Checking it out:
 
    cd /usr/src
    sudo git clone git://github.com/nacitar/uuid_boot.git

If on gentoo:

    cd uuid_boot
    # the following command assumes /etc/portage/package.* are all DIRECTORIES not files
    # if you have files, update your system by making a folder and putting your old file
    # in it with any name you want.
    sudo ./install_use_flags.sh
    sudo emerge busybox mdadm

Non-gentoo

    build a static busybox with mdev support, as well as a static mdadm


Now simply add the initramfs file to the kernel:

    /usr/src/uuid_boot/initramfs

