# prevent less from clearing the screen while still showing colors.
export LESS=-XR

GPG_TTY=$(tty)
export GPG_TTY

if [[ "$(type -P brew)" ]]; then
  source $(brew --prefix z)/etc/profile.d/z.sh
fi
