BREW_PREFIX=$(brew --prefix)

[ "$BREW_PREFIX" ] || return 1;

[ -f $BREW_PREFIX/etc/profile.d/autojump.sh ] && . $BREW_PREFIX/etc/profile.d/autojump.sh