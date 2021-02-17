paths=(
  ~/.local/bin
  $DOTFILES/bin
)

export PATH
for p in "${paths[@]}"; do
  [[ -d "$p" ]] && PATH="$p:$(path_remove "$p")"
done
unset p paths

is_ubuntu || return 1

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
