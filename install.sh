#!/bin/bash

# Download the latest version of the Gentoo 64-bit Stage 3 tarball
wget https://bouncer.gentoo.org/fetch/root/all/releases/amd64/autobuilds/latest-stage3-amd64.txt -O /tmp/latest-stage3-amd64.txt
latest_tarball_url=$(cat /tmp/latest-stage3-amd64.txt | grep -v "^#" | awk '{print $1}')
wget $latest_tarball_url -P /mnt/gentoo/

# Extract the tarball to the root filesystem
tar xpvf /mnt/gentoo/stage3-*.tar.* --xattrs-include='*.*' --numeric-owner -C /mnt/gentoo/

# Mount the necessary filesystems
mount -t proc proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev

# Chroot into the Gentoo environment
chroot /mnt/gentoo /bin/bash <<EOF

# Configure the Gentoo environment
env-update
source /etc/profile

# Prompt for user configuration
echo "You may now configure your Gentoo installation. Press Enter to continue."
read

EOF
