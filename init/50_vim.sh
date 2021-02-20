# backups, swaps and undos are stored here.
mkdir -p $DOTFILES/caches/vim

mkdir -p ~/.config/nvim
cat > ~/.config/nvim/init.vim <<EOF
set runtimepath^=~/.nvim runtimepath+=~/.nvim/after
let &packpath=&runtimepath
source ~/.nvim/init.vim
EOF

if [[ "$(type -P nvim)" ]]; then
  nvim +PlugUpgrade +PlugUpdate +qall
fi