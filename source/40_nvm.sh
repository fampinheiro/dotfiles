if [[ "$(type -P brew)" ]]; then
  if [ -f "$(brew --prefix)/opt/nvm/nvm.sh" ]; then
    mkdir -p "$HOME/.nvm"
    export NVM_DIR="$HOME/.nvm"
    . "$(brew --prefix)/opt/nvm/nvm.sh"
    . "$(brew --prefix)/opt/nvm/bash_completion"
  fi  
else
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

