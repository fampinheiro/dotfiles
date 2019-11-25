set nocompatible
set encoding=utf8

if !has('patch-8.1.201')
  silent! python3 1
endif

if has('nvim')
  call plug#begin('~/.local/share/nvim/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

" navigation
Plug 'airblade/vim-gitgutter'

" syntax
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx']}
Plug 'mxw/vim-jsx', {'for': ['javascript', 'javascript.jsx']}
Plug 'styled-components/vim-styled-components', {'for': ['javascript', 'javascript.jsx']}
Plug 'tpope/vim-git'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }

" lint, format, autocomplete
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'mattn/emmet-vim'

" tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'

" misc
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" git
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'

" easily surround sutff with tags, brackets, quotes, etc
Plug 'tpope/vim-surround'
call plug#end()

" load configs

runtime! config/*.vim

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source $HOME/.vimrc_background
endif

function! Dot_set_colours(bg, error_fg, warning_fg)
  exe 'hi ALEError guibg=' . a:bg . ' cterm=underline'
  exe 'hi ALEErrorSign guibg=' . a:bg . ' guifg=' . a:error_fg
  exe 'hi ALEWarning guibg=' . a:bg . ' cterm=underline'
  exe 'hi ALEWarningSign guibg=' . a:bg . ' guifg=' . a:warning_fg
  exe 'hi CocErrorSign guibg=' . a:bg . ' guifg=' . a:error_fg
  exe 'hi CocInfoSign guibg=' . a:bg . ' guifg=' . a:warning_fg
  exe 'hi CocWarningSign guibg=' . a:bg . ' guifg=' . a:warning_fg
endfunction

if exists('g:colors_name')
  let coloursettings = '$DOTFILES/nvim/config/colours/'.g:colors_name.'.vim'
  if !empty(glob(coloursettings))
    execute 'source '.coloursettings
  endif
endif

