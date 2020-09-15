#   ____           _____ _    _
#  |  _ \   /\    / ____| |  | |
#  | |_) | /  \  | (___ | |__| |
#  |  _ < / /\ \  \___ \|  __  |
#  | |_) / ____ \ ____) | |  | |
#  |____/_/    \_\_____/|_|  |_|

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases

# alias for vim
alias vim='nvim'
alias vi='nvim'
alias oldvim='vim'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../..'
alias .5='cd ../../../..'
alias .6='cd ../../../../..'

# pacman and yay
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias yaysua="yay -Sua --noconfirm"              # update only AUR pkgs
alias yaysyu="yay -Syu --noconfirm"              # update standard pkgs and AUR pkgs
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages

# shutdown or reboot
alias shutdown="sudo shutdown now"
alias reboot="sudo reboot"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Changing "ls" to "exa"
alias ls='exa -al --icons --color=always --group-directories-first' # my preferred listing
alias la='exa -a --icons --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --icons --color=always --group-directories-first'  # long format
alias lt='exa -aT --icons --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# alias for lsd for ls
# alias ls='lsd -hA --group-dirs first'
# alias l='ls -l'
# alias la='ls -a'
# alias lla='ls -la'
# alias lt='ls --tree'

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

source /usr/share/nvm/init-nvm.sh

# editor
export EDITOR="/usr/bin/nvim"
