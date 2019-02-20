# easily re-execute the last history command
alias r="fc -s"

if [ ! -z "$(type -P hub)" ]; then
  alias git='hub'
fi

