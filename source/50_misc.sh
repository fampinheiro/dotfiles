# case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

export GREP_OPTIONS='--color=auto'

# prevent less from clearing the screen while still showing colors.
export LESS=-XR
