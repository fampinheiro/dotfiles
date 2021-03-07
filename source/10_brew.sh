if is_osx; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export PATH="$HOMEBREW_PREFIX/opt/grep/libexec/gnubin:$PATH"
elif is_ubuntu; then
  eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
fi
