export NVM_DIR="$HOME/.nvm"

if [[ "$(type -P brew)" ]]; then
  source $(brew --prefix nvm)/nvm.sh
fi

[[ "$1" != init && ! -e $NVM_DIR ]] && return 1
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
