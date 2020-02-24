# easily re-execute the last history command
alias r="fc -s"

if [ ! -z "$(type -P hub)" ]; then
  alias git="hub"
fi

if [ ! -z "$(type -P nvim)" ]; then
  alias vim="nvim"
fi

if [ ! -z "$(type -P thefuck)" ]; then
  eval "$(thefuck --alias)"
fi

