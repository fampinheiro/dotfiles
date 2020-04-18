# Load nave- and npm-related functions.
source $DOTFILES/source/50_node.sh init

# install latest stable Node.js, set as default, install global npm modules.
nvm install 'lts/*'
nvm alias default 'lts/*'
