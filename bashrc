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


# Put your fun stuff here.
# To generate a initramfs
# dracut --hostonly -k /lib/modules/5.11.0-rc6/ --kver 5.11.0-rc6 -f /boot/initramfs-5.11.0-rc6.img
# grub-mkconfig -o /boot/grub/grub.cfg

PS1='\e[0;34m╔══<=\e[m\e[0;32m\u\e[m\e[0;34m>=\e[m \e[0;34m[\e[m\e[0;35m\w\e[m\e[0;34m]\e[m
\e[0;34m╚══>>> $\e[m'
PS2='==>>'

alias gup="mirrorselect -D -H -c 'United States' -R 'North America' && emerge --sync && emerge-webrsync && emerge -au1 sys-apps/portage && emerge -uDNpv world"
