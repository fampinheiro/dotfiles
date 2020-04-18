# easily re-execute the last history command
alias r="fc -s"

[ ! -z "$(type -P hub)" ] && alias git="hub"
[ ! -z "$(type -P nvim)" ] && alias vim="nvim"
[ ! -z "$(type -P thefuck)" ] && eval "$(thefuck --alias)"
