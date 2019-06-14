# do nothing if non-interactive mode
[ -z "$PS1" ] && return

if [ -f /etc/bash.bashrc ]; then
    . /etc/bash.bashrc
fi

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -n "$DOTPATH" ]; then
    . $DOTPATH/config/sh/shrc.sh
else
    . $HOME/.shrc
fi

_SEP=""
#_PS1_1='\[\e[1;37;44m\] \u\[\e[0;44m\]@\h'$_OS_SYMBOL' \[\e[0m\]' # _OS_SYMBOL : defined on .shrc
_PS1_1='\[\e[1;37;44m\] \u@\h'$_OS_SYMBOL'  '$CURRENT_SHELL' \[\e[0m\]' # _OS_SYMBOL, CURRENT_SHELL : defined on .shrc
_PS1_SEP1='\[\e[34;46m\]'$_SEP'\[\e[0m\]'
_PS1_2='\[\e[1;37;46m\] \w \[\e[0m\]'
_PS1_SEP2='\[\e[36m\]'$_SEP'\[\e[0m\]'

PS1="${_PS1_1}${_PS1_SEP1}${_PS1_2}${_PS1_SEP2}\n"'\[\e[1m\]$ \[\e[0m\]'

unset _OS_SYMBOL _SEP _PS1_1 _PS1_2 _PS1_SEP1 _PS1_SEP2
