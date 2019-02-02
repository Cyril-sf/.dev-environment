function __git_dirty {
  git diff --quiet HEAD &>/dev/null
    [ $? == 1 ] && echo "!"
  }

function __git_branch {
  local branch=$(__git_ps1 "%s")
  if [ "$branch" != "" ]; then
    echo "($branch)"
  fi
}

# via http://tammersaleh.com/posts/a-better-rvm-bash-prompt
bash_prompt() {
  local NONE="\[\033[0m\]" # unsets color to term's fg color

  # regular colors
  local K="\[\033[0;30m\]" # black
  local R="\[\033[0;31m\]" # red
  local G="\[\033[0;32m\]" # green
  local Y="\[\033[0;33m\]" # yellow
  local B="\[\033[0;34m\]" # blue
  local M="\[\033[0;35m\]" # magenta
  local C="\[\033[0;36m\]" # cyan
  local W="\[\033[0;37m\]" # white

  local UC=$W # user's color
  [ $UID -eq "0" ] && UC=$R # root's color

  PS1="$W\u@\h $R\w $Y\$(__git_branch)$R\$(__git_dirty)${NONE}$ "
}

bash_prompt