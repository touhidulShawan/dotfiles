#   ____           _____ _    _
#  |  _ \   /\    / ____| |  | |
#  | |_) | /  \  | (___ | |__| |
#  |  _ < / /\ \  \___ \|  __  |
#  | |_) / ____ \ ____) | |  | |
#  |____/_/    \_\_____/|_|  |_|

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set global editor neovim
export EDITOR="/usr/bin/nvim"

# This loads nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# alias for wifi on/OFF
alias start_wifi='nmcli radio wifi on'
alias stop_wifi='nmcli radio wifi off'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../..'
alias .5='cd ../../../..'
alias .6='cd ../../../../..'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# alias for my lsd command replace for ls

 alias ls='lsd -hA --group-dirs first'
 alias l='ls -l'
 alias la='ls -a'
 alias lla='ls -la'
 alias lt='ls --tree'

# alias for exit
alias e='exit'

#alias for clear
alias c='clear'

# alias for rm
alias remove='sudo rm -r'

#alias for advanced copy
alias cp='cp -r -g'

# alias for reboot and shutdown
alias reboot='sudo reboot'
alias shutdown='sudo shutdown'

# alias pacman and yay
# alias for update package
alias update='sudo pacman -Syyu'
# alias to install pacman packages
alias install='sudo pacman -S'
# alias search package
alias search='sudo pacman -Ss'
# alias to uninstall packages
alias uninstall='sudo pacman -Rns'
alias yaysua="yay -Sua --noconfirm"              # update only AUR pkgs
alias yaysyu="yay -Syu --noconfirm"              # update standard pkgs and AUR pkgs
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
# alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages

# update mirrorlist using reflector
alias mirror='sudo reflector --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'


alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"


