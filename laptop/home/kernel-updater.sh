#!/bin/bash


cp /usr/src/linux/.config /usr/src/.config-"`date +"%d-%m-%Y"`"
cp -avL /usr/src/linux /tmp/linux
cd /tmp/linux

make clean
make -j8
make modules_install install

cp -avL /tmp/linux /usr/src/linux
cd /usr/src/linux

emerge @module-rebuild

dracut --hostonly -k /lib/modules/5.11.11-gentoo/ --kver 5.11.11-gentoo -f /boot/initramfs-5.11.11-gentoo.img

grub-mkconfig -o /boot/grub/grub.cfg
