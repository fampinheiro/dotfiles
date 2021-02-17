[[ "$1" != init && ! -e ~/.volta ]] && return 1

export VOLTA_HOME=~/.volta
grep --silent "$VOLTA_HOME/bin" <<< $PATH || export PATH="$VOLTA_HOME/bin:$PATH"

