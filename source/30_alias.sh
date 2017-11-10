# easily re-execute the last history command
alias r="fc -s"

[ '$(type -P hub)' ] && alias git='hub'
eval "$(thefuck --alias)"