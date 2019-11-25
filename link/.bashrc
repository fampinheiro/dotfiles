export dotfiles=~/.dotfiles

PATH=$dotfiles/bin:/usr/local/sbin:$PATH
export PATH

# source all files in "source"
function src() {
  local file
  if [[ "$1" ]]; then
    source "$dotfiles/source/$1.sh"
  else
    for file in $dotfiles/source/*; do
      source "$file"
    done
  fi
}

# run dotfiles script, then source.
function initdf() {
  $dotfiles/bin/init "$@" && src
}

src
