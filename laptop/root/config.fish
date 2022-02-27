if status is-interactive
    # Commands to run in interactive sessions can go here
	function fish_prompt
        set_color blue
        echo ╔══\<\=(set_color red)(whoami)(set_color purple)\>\=(set_color purple) [(pwd)]
        set_color blue
        echo ╚══\>\>\>(set_color red) '#' (set_color normal)
    end

    alias vimuse="vim /etc/portage/package.use"
    alias vimaccept="vim /etc/portage/package.accept_keywords"
    alias vimmake="vim /etc/portage/make.conf"
    alias vimunmask="vim /etc/portage/package.unmask"
    alias ls="ls -aACghsS" #lhgSCA
    alias ytdl="youtube-dl"
    alias gup="emerge --sync && emerge -au1 portage && eix-sync && emerge -uDNpv world"
end
