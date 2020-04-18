[ -f ~/.fzf.bash ] && source ~/.fzf.bash

[ "$(type -P brew)" ] || return 1;
[ -f "$(brew --prefix)/etc/profile.d/z.sh" ] && source $(brew --prefix z)/etc/profile.d/z.sh
