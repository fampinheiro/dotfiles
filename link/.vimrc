set number
set title
set nowrap
set laststatus=2

set textwidth=80

" indentation
set autoindent
set shiftwidth=2 " # of indent spaces
set smarttab " start on position of previous line
set softtabstop=2 " tab key insert 2 spaces
set tabstop=2 " tabs indent 2 spaces
set expandtab " tabs to spaces

" plugins
let g:ctrlp_custom_ignore = 'node_modules\|git'

call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-sensible'
  Plug '$(brew --prefix)/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-surround'
  Plug 'prettier/vim-prettier', { 'do': 'yarn' }
  Plug 'itchyny/lightline.vim'
  Plug 'elzr/vim-json'
call plug#end()

