is_osx || return 1

# exit if brew is not installed
[[ ! "$(type -P brew)" ]] && e_error "what am i doing here if brew cannot be found" && return 1

# homebrew recipes
recipes=(
  ag
  bash
  docker
  git
  hub
  rbenv
  reattach-to-user-namespace
  tmux
  z
)

brew_install_recipes

# this is where brew stores its binary symlinks
local binroot="$(brew --config | awk '/HOMEBREW_PREFIX/ {print $2}')"/bin

# bash
if [[ "$(type -P $binroot/bash)" && "$(cat /etc/shells | grep -q "$binroot/bash")" ]]; then
  e_header "adding $binroot/bash to the list of acceptable shells"
  echo "$binroot/bash" | sudo tee -a /etc/shells >/dev/null
fi
if [[ "$(dscl . -read ~ UserShell | awk '{print $2}')" != "$binroot/bash" ]]; then
  e_header "making $binroot/bash your default shell"
  sudo chsh -s "$binroot/bash" "$USER" >/dev/null 2>&1
  e_arrow "please exit and restart all your shells."
fi

# homebrew cask recipes

recipes=(
  appdelete
  franz
  grammarly
  spotify
  visual-studio-code
  fantastical
  google-chrome
  lastpass
  tunnelblick
  zoomus
)

# this is where brew stores its binary symlinks
local binroot="$(brew --config | awk '/HOMEBREW_PREFIX/ {print $2}')"/bin