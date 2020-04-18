" coc
set cmdheight=2 " Better display for messages
set updatetime=300
set shortmess+=c " don't give ins-completion-menu messages.
let g:coc_global_extensions = [
\ 'coc-json',
\ 'coc-tsserver',
\ 'coc-html',
\ 'coc-css',
\ ]
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" ale

let g:ale_fixers = {
\ 'javascript': ['prettier'],
\ 'json': ['prettier'],
\}
let g:ale_linters = {
\ 'javascript': ['prettier']
\}
let g:ale_fix_on_save = 1
let g:ale_lint_delay = 1000
let g:ale_lint_on_enter = 0 " don't lint when we open a file
let g:ale_sign_error = '✖' " looks nicer than the default >>
let g:ale_sign_warning = '⚑'

