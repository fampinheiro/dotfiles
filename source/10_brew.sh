if [ -f "/opt/homebrew/bin/brew" ]
then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export PATH="$HOMEBREW_PREFIX/opt/grep/libexec/gnubin:$PATH"
elif [ -f "/home/linuxbrew/.linuxbrew/bin/brew" ]
then
  eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
fi
