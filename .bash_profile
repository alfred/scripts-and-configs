#git and color in command prompt
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}") "
}
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[1;32m\]"
BLUE="\[\033[1;34m\]"
NORMAL="\[\033[0;0m\]"
PS1="[$YELLOW \w$GREEN \$(parse_git_branch)$NORMAL]\$ "

export NVM_DIR="/Users/$(whoami)/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias gpr='git pull --rebase'
alias gs='git status'
alias gc='git checkout'
alias gb='git branch'
alias gl='git log'
alias gd='git diff'
alias gp='git push'
alias gcd='git checkout develop'

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


export PATH="/usr/local/sbin:$PATH"

echo "Now using node $(nvm current) (npm v$(npm -v))"
