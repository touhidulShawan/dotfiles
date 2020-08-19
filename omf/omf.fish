# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"


#export LS_COLORS="di=35"
#export EXA_COLORS="*.zip=38;5;125:*.md=38;5;121:*.log=38;5;248:*.json=32"

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

# alias ls='lsd -hA --group-dirs first'
# alias l='ls -l'
# alias la='ls -a'
# alias lla='ls -la'
# alias lt='ls --tree'

# alias for my exa command replace for ls
alias ls='exa -D --icons'
alias l='exa --icons -a --group-directories-first'
alias la='exa -l --icons -B -g -h -t=modified --time-style=default -@ --git'
alias lla='exa -l -a --icons -B -g -h -t=modified --time-style=default -@ --git'
alias lt='exa --icons -T'

# alias for git
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias stat='git status'
alias tag='git tag'
alias newtag='git tag -a'
alias addremote='git remote add origin'
alias clone='git clone'

# alias for exit
alias e='exit'

#alias for clear
alias c='clear'

# alias for my create-rect-app

alias react='npx create-react-app'
alias react-app='create-react-app'


# alias to  install package of stylelint and stylelint-config-standard

alias stylelint='npm install --save-dev stylelint stylelint-config-standard'

# alias for rm

alias remove='sudo rm -r'

# alias for reboot and shutdown
alias reboot='sudo reboot'
alias shutdown='sudo shutdown'

# alias for advanced copy and move
#alias cp='advcp -g'
#alias mv='advmv -g'
alias cp='rsync --info=progress2 '

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

#alias to kill vlc
alias kill-vlc='killall -9 vlc'
# update mirrorlist using reflector
alias mirror='sudo reflector --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Add Starship command prompt
# starship init fish | source

# virtualfish
#eval (python -m virtualfish auto_activation)
