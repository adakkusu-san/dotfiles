#!/bin/sh
dir(){echo "This ain\'t Windows, dummy
Use \'ls\' instead"}
notepad(){echo "Try to use \'vim\' for this"}
alias ls=ls --color=auto --group-directories-first
alias ls-l=ls -l
alias ls-w=command ls
alias md=mkdir
alias cp=cp -i
alias mv=mv -i
alias rm=rm -I
alias grep=grep --color=auto
alias diff=diff --color=auto
