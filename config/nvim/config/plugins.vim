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