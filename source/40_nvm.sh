if [[ "$(type -P brew)" ]]; then
  if [ -f "$(brew --prefix)/opt/nvm/nvm.sh" ]; then
    mkdir -p "$HOME/.nvm"
    export NVM_DIR="$HOME/.nvm"
    . "$(brew --prefix)/opt/nvm/nvm.sh"
  fi  
fi

