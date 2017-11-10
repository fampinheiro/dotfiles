GIT_PROMPT="$(brew --prefix git)/etc/bash_completion.d/git-prompt.sh"
[ -f $GIT_PROMPT ] && source $GIT_PROMPT

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_DESCRIBE_STYLE="branch"

function prompt() {
  function path() { echo "\[\033[38;5;2m\]\w"; }
  function username() { echo "\[\033[38;5;4m\]\u"; }
  function node_v() { echo "\[\033[38;5;8m\]node \$(node -v)"; }
  function npm_v() { echo "\[\033[38;5;8m\]npm v\$(npm -v)"; }
  function git_branch() { echo "\[\033[38;5;11m\]\$(__git_ps1)"; }
  function line_one() { echo "$(username) $(path) $(node_v) $(npm_v)"; }
  function line_two() { echo '\[\033[38;5;8m\]$(date +%H:%M:%S)'"$(git_branch)\[$(tput sgr0)\] \$ "; }
  echo "\n$(line_one)\n$(line_two)"
}

export PS1="$(prompt)"
unset -f prompt