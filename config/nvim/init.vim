set nocompatible
set encoding=utf8

if has('nvim')
  call plug#begin('~/.local/share/nvim/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

" navigation
Plug 'airblade/vim-gitgutter'

" linter and friends
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" misc
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" git
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'

" easily surround sutff with tags, brackets, quotes, etc
Plug 'tpope/vim-surround'

call plug#end()

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
  let coloursettings = '~/.nvim/config/colours/'.g:colors_name.'.vim'
  if !empty(glob(coloursettings))
    execute 'source '.coloursettings
  endif
endif
