is_ubuntu || return 1

setxkbmap -option caps:escape
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

