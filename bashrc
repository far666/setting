# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# VeryBuy specific aliases and functions

alias grep='grep --color=auto'

func_gasux()
{
    grep -r $1 * | awk -F: '{print $1}' | sort | uniq | xargs echo
}
alias gasux=func_gasux

source ~/.git-prompt.sh
PS1='[\u@\h \w]$(__git_ps1 "(%s)")\$ '
alias go='sh ./go'
alias gom='sh ./gom'

#git
alias git="SSH_ASKPASS='' git"
alias gs='git status'
alias ga='git add .'
alias gb='git branch'
alias gc='git commit -m'
alias gd='git diff'
alias gdd='git diff HEAD'
alias gdm='git diff master'
alias gph='git push'
alias gpl='git pull'
alias gk='gitk --all'
alias gu='git gui'

