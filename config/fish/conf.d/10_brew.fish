if test -e /opt/homebrew/bin/brew
  eval (/opt/homebrew/bin/brew shellenv)
  fish_add_path $HOMEBREW_PREFIX/opt/grep/libexec/gnubin
else if test -e /home/linuxbrew/.linuxbrew/bin/brew
  eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
end


