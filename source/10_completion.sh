if [ -n "$ZSH_VERSION" ]; then
  autoload bashcompinit
  bashcompinit
fi

if [[ "$(type -P brew)" ]]; then
  source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
  source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"
fi
