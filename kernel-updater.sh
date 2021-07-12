#!/bin/bash

KERNEL_VERSION=$(echo /var/db/pkg/sys-kernel/gentoo-sources* | tr -d -c {0-9.})

cp /usr/src/linux/.config /usr/src/configs/.config-pre"`date +"%d-%m-%Y"`"
#cp -avl
rm -rf /tmp/linux
cp -r /usr/src/linux/. /tmp/linux
cd /tmp/linux

make clean
make -j8
make modules_install install

rm -rf /usr/src/linux/*
cp -r /tmp/linux/. /usr/src/linux
cd /usr/src/linux
rm -rf /tmp/linux
cp /usr/src/linux/.config /usr/src/configs/.config-post"`date +"%d-%m-%Y"`"

#emerge @module-rebuild

dracut --hostonly -k /lib/modules/"$KERNEL_VERSION"-gentoo/ --kver "$KERNEL_VERSION"-gentoo -f /boot/initramfs-"$KERNEL_VERSION"-gentoo.img

grub-mkconfig -o /boot/grub/grub.cfg
