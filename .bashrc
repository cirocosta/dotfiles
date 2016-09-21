#
# ~/.bashrc
#

PS1='[\u \w]\$ '

# added by travis gem
[ -f /Users/cirocosta/.travis/travis.sh ] && source /Users/cirocosta/.travis/travis.sh

# Adding autocomplete for 'we' 
[ -f ~/.we_autocomplete ] && source ~/.we_autocomplete

