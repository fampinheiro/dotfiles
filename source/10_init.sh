if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach -t default || tmux new -s default
fi

if [ -n "$ZSH_VERSION" ]; then
  autoload bashcompinit
  bashcompinit
fi
