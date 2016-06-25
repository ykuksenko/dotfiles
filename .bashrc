# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=vim
#do not record commands with leading spaces or duplicate commands
export HISTCONTROL='ignoreboth'
#make the history larger
export HISTSIZE='10000'
#record command imeadiately instead of waiting for logout.
export PROMPT_COMMAND='history -a'

function smartsort() {
    #just pipe into this function...
    sort --version-sort -f
    #http://stackoverflow.com/questions/3323619/how-to-sort-files-numerically-from-linux-command-line
}

validate_erb() {
  erb -P -x -T '-' $1 | ruby -c
}
