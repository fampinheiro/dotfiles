BREW_PREFIX=$(brew --prefix)

[ "$BREW_PREFIX" ] || return 1;

if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
  source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
else
  for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
    [[ -r "$COMPLETION" ]] && source "$COMPLETION"
  done
fi

[ -f $BREW_PREFIX/etc/profile.d/autojump.sh ] && . $BREW_PREFIX/etc/profile.d/autojump.sh