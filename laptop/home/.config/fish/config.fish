if status is-interactive

    function fish_prompt
        set_color blue
        echo ╔══\<\=(set_color green)(whoami)(set_color blue)\>\=(set_color purple) [(pwd)]
        set_color blue
        echo ╚══\>\>\>(set_color green) '$' (set_color normal)
    end

    alias vimuse="sudo vim /etc/portage/package.use"
    alias vimaccept="sudo vim /etc/portage/package.accept_keywords"
    alias vimmake="sudo vim /etc/portage/make.conf"
    alias vimunmask="sudo vim /etc/portage/package.unmask"
    alias ls="ls -aACghsS" #lhgSCA
    alias ytdl="youtube-dl"
    alias gup="sudo emerge --sync && sudo eix-sync && sudo emerge -au1 portage && sudo emerge -uDNpv world"

end
