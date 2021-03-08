# Install Homebrew.
if [[ ! "$(type -P brew)" ]]
then
  e_header "Installing Homebrew"
  true | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Exit if, for some reason, Homebrew is not installed.
[[ ! "$(type -p brew)" ]] && e_error "Homebrew failed to install." && return 1

e_header "Updating Homebrew"

brew doctor

if is_osx; then
  brew bundle --file "$DOTFILES/misc/Brewfile.macos"
elif is_ubuntu; then
  brew bundle --file "$DOTFILES/misc/Brewfile.linux"
fi 
