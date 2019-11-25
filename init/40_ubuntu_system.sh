is_ubuntu || return 1

sudo apt install tmux

vim_plug_url=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs $vim_plug_url
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs $vim_plug_url
