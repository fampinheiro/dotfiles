export DOTFILES=~/.dotfiles

PATH=$DOTFILES/bin:$PATH
export PATH

# source all files in "source"
function src() {
  local file
  if [[ "$1" ]]; then
    source "$DOTFILES/source/$1.sh"
  else
    for file in $DOTFILES/source/*; do
      source "$file"
    done
  fi
}

# run dotfiles script, then source.
function dotfiles() {
  $DOTFILES/bin/dotfiles "$@" && src
}

src

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
