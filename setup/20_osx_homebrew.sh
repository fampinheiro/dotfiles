is_osx || return 1

# install homebrew
if [[ ! "$(type -P brew)" ]]; then
  e_header "installing homebrew"
  true | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# exit if homebrew installation failed
[[ ! "$(type -P brew)" ]] && e_error "homebrew installation" && return 1

e_header "Homebrew is brewing..."
brew doctor
brew update
brew upgrade

# tap homebrew kegs.
function brew_tap_kegs() {
  kegs=($(setdiff "${kegs[*]}" "$(brew tap)"))
  if (( ${#kegs[@]} > 0 )); then
    e_header "tapping homebrew kegs: ${kegs[*]}"
    for keg in "${kegs[@]}"; do
      brew tap $keg
    done
  fi
}

# install homebrew recipes.
function brew_install_recipes() {
  recipes=($(setdiff "${recipes[*]}" "$(brew list)"))
  if (( ${#recipes[@]} > 0 )); then
    e_header "installing homebrew recipes: ${recipes[*]}"
    for recipe in "${recipes[@]}"; do
      brew install $recipe
    done
  fi
}

# install homebrew recipes.
function brew_cask_install_recipes() {
  recipes=($(setdiff "${recipes[*]}" "$(brew cask list)"))
  if (( ${#recipes[@]} > 0 )); then
    e_header "installing homebrew recipes: ${recipes[*]}"
    for recipe in "${recipes[@]}"; do
      brew cask install $recipe
    done
  fi
}