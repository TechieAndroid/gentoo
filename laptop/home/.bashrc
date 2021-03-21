# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# cpupower frequency-set -g performance
# eselect kernel list
# cd /usr/src/linux
# make clean
# make distclean
# cp .config ../
# cp ../.config .
# cp -av /usr/src/linux-5.11.7-gentoo-r1 /tmp/
# cd /tmp/linux-5.11.7-gentoo-r1/
# make clean && make -j8 && make modules_install install
# dracut --hostonly -k /lib/modules/5.11.7-gentoo-r1/ --kver 5.11.7-gentoo-r1 -f /boot/initramfs-5.11.7-gentoo-r1.img
# rm /boot/*old
# grub-mkconfig -o /boot/grub/grub.cfg

PS1='\e[0;34m╔══<=\e[m\e[0;32m\u\e[m\e[0;34m>=\e[m \e[0;34m[\e[m\e[0;35m\w\e[m\e[0;34m]\e[m
\e[0;34m╚══>>> $\e[m'

PATH=$PATH:/home/recompiler/.local/bin

alias vimuse="sudo vim /etc/portage/package.use"
alias vimaccept="sudo vim /etc/portage/package.accept_keywords"
alias vimmake="sudo vim /etc/portage/make.conf"
alias vimunmask="sudo vim /etc/portage/package.unmask"
alias ls="ls -lahS"
alias ytdl="youtube-dl"
alias gup="sudo emerge-webrsync && sudo eix-sync && sudo emerge -au1 sys-apps/portage && sudo emerge -uDNpv world"
