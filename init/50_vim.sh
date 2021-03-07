# backups, swaps and undos are stored here.
mkdir -p $DOTFILES/caches/vim

if [[ "$(type -P nvim)" ]]; then
  nvim +PlugUpgrade +PlugUpdate +qall
fi
