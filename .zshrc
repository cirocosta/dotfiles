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

DYLD_FORCE_FLAT_NAMESPACE=1

[ -f /Users/cirocosta/.travis/travis.sh ] && \
  source /Users/cirocosta/.travis/travis.sh

if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
    source ~/.gnupg/.gpg-agent-info
    export GPG_AGENT_INFO
else
    eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
fi

ulimit -n 65536


# Adding autocomplete for 'we' 
[ -f ~/.we_autocomplete ] && source ~/.we_autocomplete

