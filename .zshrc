export DOTFILES="$HOME/dotfiles"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

source /Users/cirocosta/bin/antigen.zsh
antigen use oh-my-zsh
antigen bundle ssh-agent
antigen bundle git
antigen bundle autojump
antigen theme robbyrussell
antigen apply

source $DOTFILES/.aliases.zsh
source $DOTFILES/.env.zsh

