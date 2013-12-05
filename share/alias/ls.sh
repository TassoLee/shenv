if [ "$(uname)" = "Darwin" ]; then
  alias ls='ls -G'
else
  alias ls='ls --color=auto'
fi

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

