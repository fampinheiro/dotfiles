export NVM_DIR="$HOME/.nvm"

if [[ "$(type -P brew)" ]]; then
  source $(brew --prefix nvm)/nvm.sh
fi

[[ "$1" != init && ! -e $NVM_DIR ]] && return 1
