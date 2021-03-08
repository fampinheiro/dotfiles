function fish_brew_dump 
  set OS (uname -s)
  if test 'Linux' = $OS
    brew bundle dump --force --file "$DOTFILES/misc/Brewfile.linux"
  end
  if test 'Darwin' = $OS
    brew bundle dump --force --file "$DOTFILES/misc/Brewfile.macos"
  end
end
