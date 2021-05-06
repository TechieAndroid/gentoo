#!/bin/bash

KERNEL_VERSION=$(echo /var/db/pkg/sys-kernel/gentoo-sources* | tr -d -c {0-9.})

cp /usr/src/linux/.config /usr/src/.config-pre"`date +"%d-%m-%Y"`"
cp -avL /usr/src/linux /tmp/linux
cd /tmp/linux

make clean
make -j8
make modules_install install

cp -avL /tmp/linux /usr/src/linux
cd /usr/src/linux
cp /usr/src/linux/.config /usr/src/.config-post"`date +"%d-%m-%Y"`"

#emerge @module-rebuild

dracut --hostonly -k /lib/modules/"$KERNEL_VERSION"-gentoo/ --kver "$KERNEL_VERSION"-gentoo -f /boot/initramfs-"$KERNEL_VERSION"-gentoo.img

grub-mkconfig -o /boot/grub/grub.cfg
