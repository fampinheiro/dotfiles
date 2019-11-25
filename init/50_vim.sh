vim_plug_url=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs $vim_plug_url
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs $vim_plug_url

if [[ "$(type -P vim)" ]]; then
  vim +PlugUpgrade +PlugUpdate +qall
fi
