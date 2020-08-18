# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"


# alias for my ls command
alias ls='lsd -hA --group-dirs first'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# alias for exit
alias e='exit'

#alias for clear
alias c='clear'

# alias for my create-rect-app  

alias react='npx create-react-app'
alias react-app='create-react-app'

# alias to install package through npm in react app

alias sc='npm install --save styled-components'

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
# alias for update package
alias update='sudo pacman -Syu'
# alias to install pacman packages 
alias install='sudo pacman -S'
# alias search package
alias search='sudo pacman -Ss'
# alias to uninstall packages
alias uninstall='sudo pacman -Rns'
#alias to kill vlc 
alias kill-vlc='killall -9 vlc'
# update mirrorlist using reflector 
alias genmirror='sudo reflector --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Add Starship command prompt 
starship init fish | source

# virtualfish 
#eval (python -m virtualfish auto_activation)
