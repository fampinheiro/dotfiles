export NVM_DIR="$HOME/.nvm"

[[ "$1" != init && ! -e $NVM_DIR ]] && return 1
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

