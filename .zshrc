export DOTFILES="$HOME/dotfiles"

source /usr/local/src/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle ssh-agent
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle autojump
antigen bundle vi-mode
antigen theme robbyrussell
antigen apply

source $DOTFILES/.env.zsh
source $DOTFILES/.aliases.zsh

# fixes Ctrl+S issue w/ some terminals
stty -ixon

export NVM_DIR="/home/ciro/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
