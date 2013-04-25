if [ $(uname -s) = "Darwin" ]; then
  __LS_FLAGS="-G"
else
  __LS_FLAGS="--color=auto"
fi

alias ls='ls $__LS_FLAGS'
alias sl='ls'
alias l='ls'
alias l.='ls -d .*'
alias ll.='ls -ld .*'
alias ll='ls -l -h'
alias la='ls -a'
alias lla='ll -a'
alias lf='ls -F'
alias llf='ll -F'
alias lt='ls -t'
alias llt='ll -t'
alias lls='ll -S'
alias lsdir='ll | grep ^d'

