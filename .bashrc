#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

[ -s "/home/ralston/.scm_breeze/scm_breeze.sh" ] && source "/home/ralston/.scm_breeze/scm_breeze.sh"
