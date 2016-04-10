export DOTFILES="$HOME/dotfiles"

source /Users/cirocosta/bin/antigen.zsh
antigen use oh-my-zsh
antigen bundle ssh-agent
antigen bundle git
antigen bundle autojump
antigen theme robbyrussell
antigen apply

source $DOTFILES/.aliases.zsh
source $DOTFILES/.env.zsh
[ -f /Users/cirocosta/.travis/travis.sh ] && \
  source /Users/cirocosta/.travis/travis.sh

ulimit -n 65536

