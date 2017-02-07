export EDITOR=vim

PS1="\n\[$(tput setaf 6)\][ \[$(tput setaf 7)\]\u \[$(tput setaf 6)\]] \[$(tput setaf 6)\][ \[$(tput setaf 5)\]\w \[$(tput setaf 6)\]]\n\[$(tput setaf 3)\]>>> \[$(tput sgr0)\]"

alias bb='sudo -H -u pkgmk fakeroot pkgmk -d'
alias bi='sudo pkgmk -i'

alias pgd='prt-get depends'

## ports alias
alias dif2='ports -d'
alias uports='sudo ports -u'

## prt-get alias
alias pp='sudo prt-get'
alias pph='prt-get help'
alias update='time sudo prt-get sysup'
alias sysup='uports && dif'
alias ii='time sudo prt-get depinst'
alias xdep='sudo prt-get listorphans'
alias pgu='time sudo prt-get update'
alias pgr='sudo prt-get remove'
alias dup='sudo prt-get dup'
alias inf='sudo prt-get info'
alias pth='sudo prt-get path'
alias dif='sudo prt-get diff'
alias pgd='sudo prt-get depends'
alias pgt='sudo prt-get deptree'
alias dpd='sudo prt-get dependent'
alias pgs='sudo prt-get dsearch -v'
alias pgsv='sudo prt-get dsearch -vv'
alias xxd='sudo prt-get listorphans | grep -v "$(cat ~/script/listorphans)"'
alias lst='sudo prt-get listinst | grep -v "$(cat ~/script/listinst)"'

## crux
alias world='geany /var/lib/pkg/db'
alias pgsi='prt-get listinst | grep'
alias cleanv='oldfiles'
alias clean='sudo rm -Rv $(oldfiles)'
alias bincrux='elinks http://crux.ster.zone/packages/3.2/'
alias updb='sudo update-desktop-database && \
	sudo gtk-update-icon-cache -t -f --include-image-data /usr/share/icons/hicolor && \
	sudo update-mime-database /usr/share/mime'

## dwm
alias mkdwm='(cd ~/dwm/dwm/; pkgmk -um && sudo pkgmk -u)'

## kernel alias
alias kernel='(cd /usr/src/linux-$(uname -r) && sudo make menuconfig)'
alias kernel2='cd /usr/src/linux-$(uname -r) && sudo make all && sudo make modules_install && sudo make install && cd'
alias grub='sudo grub-install /dev/sda && sudo grub-mkconfig -o /boot/grub/grub.cfg'

## shortcuts alias
alias shot="mkdir -p ~/pictures/scrot; scrot 'scrot-%Y%m%d-%H%M%S.png' -q 100 -cd 3 -e 'mv \$f ~/pictures/scrot/'"
alias clear='clear; neofetch; dfcz'
alias x='clear'
alias off='sudo poweroff'
alias rff='sudo reboot'
alias ytF='youtube-dl -F'
alias net='sudo nethogs wlo1'
alias spd='nbwmon'
alias ytf='youtube-dl -f'
alias ssd='sudo smartctl -a /dev/sda'
alias scan='cd /; ncdu && cd'
alias slog='watch "dmesg | tail -20"'
alias tm='mv -v .mozilla/ .mozilla2/; firefox google.com; rm -r .mozilla/; mv -v .mozilla2/ .mozilla/'
alias dfcz='dfc -fp /dev -q name'
alias pg='while true; do ping google.com; sleep 2; done'
alias ls='ls --color=auto'
alias oo='sleep 2 && xset dpms force off'

## git
alias gpull='for g in $(ls ~/MyGit/); do echo "### ${g} ###" && (cd ~/MyGit/$g && git pull); done'
alias gstat='for g in $(ls ~/MyGit/); do echo "### ${g} ###" && (cd ~/MyGit/$g && git status); done'
alias gpush='for g in $(ls ~/MyGit/); do echo "### ${g} ###" && (cd ~/MyGit/$g && git push); done'


alias psync='for ports in lfs-ports lfs-ports-xorg; do (cd /usr/ports/$ports && sudo git pull); done'
alias gg='git add . && git commit -m $1 && git push'

neofetch
dfcz
