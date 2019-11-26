# Load nave- and npm-related functions.
source $DOTFILES/source/50_node.sh init

if [[ is_ubuntu ]]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
fi

# install latest stable Node.js, set as default, install global npm modules.
nvm install 'lts/*'
nvm alias default 'lts/*'
