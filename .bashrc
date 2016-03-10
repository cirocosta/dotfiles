#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


# added by travis gem
[ -f /Users/cirocosta/.travis/travis.sh ] && source /Users/cirocosta/.travis/travis.sh
