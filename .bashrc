export PS1='[\[\033[34m\]\w\[\033[0m\] - \[\033[91m\]\t\[\033[0m\]]\$ '
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export HISTSIZE=
export HISTFILESIZE=
alias ls='ls -Fh'
alias grep='grep --color=auto'

for script in ~/.scripts/*.sh
do
    source $script
done
