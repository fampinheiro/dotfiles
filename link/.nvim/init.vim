set nocompatible
set encoding=utf8

if has('nvim')
  call plug#begin('~/.local/share/nvim/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

" linter
Plug 'w0rp/ale'

call plug#end()

runtime! config/*.vim
