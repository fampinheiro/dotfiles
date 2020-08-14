[ -s "$(type -P brew)" ] || return 1


[ -f "$(brew --prefix git)/etc/bash_completion.d/git-completion.bash" ] \
  && source "$(brew --prefix git)/etc/bash_completion.d/git-completion.bash"
[ -s "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc" ] \
  && source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc" 
[ -s "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc" ] \
  && source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"
[ -s "$(brew --prefix nvm)/etc/bash_completion.d/nvm" ] \
  && source "$(brew --prefix nvm)/etc/bash_completion.d/nvm"