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
# cp -av /usr/src/linux-5.11.11-gentoo /tmp/
# cd /tmp/linux-5.11.11-gentoo/
# make clean && make -j8 && make modules_install install
# dracut --hostonly -k /lib/modules/5.11.11-gentoo/ --kver 5.11.11-gentoo -f /boot/initramfs-5.11.11-gentoo.img
# rm /boot/*old
# grub-mkconfig -o /boot/grub/grub.cfg

#PS1='\e[0;34m╔══<=\e[m\e[0;31m\u\e[m\e[0;34m>=\e[m \e[0;34m[\e[m\e[0;35m\w\e[m\e[0;34m]\e[m
#\e[0;34m╚══>>> \e[m\e[0;31m#\e[m'

#PS1='\e[34m╔══<=\e[m\e[31m\u\e[m\e[34m>=\e[m \e[34m[\e[m\e[35m\w\e[m\e[34m]\e[m
#\e[34m╚══>>> \e[m\e[31m#\e[m'

PS1='\[\e[34m\]╔══<=\[\e[m\]\[\e[31m\]\u\[\e[m\]\e[34m\]>=\[\e[m\] \[\e[34m\]\[\e[m\]\[\e[35m\][\w]\[\e[m\[\e[34m\]\[\e[m\]
\[\e[34m\]╚══>>> \[\e[m\]\[\e[31m\]#\[\e[m\]'

#PATH=$PATH:/home/recompiler/.local/bin

alias vimuse="vim /etc/portage/package.use"
alias vimaccept="vim /etc/portage/package.accept_keywords"
alias vimmake="vim /etc/portage/make.conf"
alias vimunmask="vim /etc/portage/package.unmask"
alias ls="ls -lhgSCA"
alias ytdl="youtube-dl"
alias gup="emerge --sync && eix-sync && emerge -au1 portage && emerge -uDNpv world"

