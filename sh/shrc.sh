# do nothing if non-interactive mode
case "$-" in
    *i*) ;;
    *) return;;
esac

# ----- shell constants -----#

CURRENT_SHELL=$(basename $(readlink /proc/$$/exe))

# interactive dash does not add SHLVL value
if [ "$CURRENT_SHELL" = "dash" ]; then
    SHLVL=$(($SHLVL+1))
fi

# ----- End of shell constants ----- #

eval $(dircolors $DOTPATH/shared/dircolors/dircolors.256dark)

# ----- PS1 ----- #

case "$OS" in
    Windows* )
        _OS_SYMBOL=""
        if [ -n "$MSYSTEM" ]; then
            _OS_SYMBOL="$_OS_SYMBOL[$MSYSTEM]"
        fi ;;
    * )
        case "$OSTYPE" in
            linux*)     _OS_SYMBOL="" ;;
            darwin*)    _OS_SYMBOL="" ;;
            *)          _OS_SYMBOL="" ;;
        esac

        if [ "$WSL" = "1" ]; then
            _OS_SYMBOL="[WSL]"
        fi ;;
esac

# interactive sh no longer uses these
case "$-" in
    *i*)
        if ( [ -z "$BASH_VERSION" ] || [ "${BASH##*/}" != "bash" ] ) && [ -z "$ZSH_VERSION" ]; then
            if [ -z ${HOSTNAME+x} ]; then
                PS1='[$USER@$NAME'
            else
                PS1='[$USER@$HOSTNAME'
            fi

            PS1=$PS1$_OS_SYMBOL" | "$CURRENT_SHELL'] $PWD'$(printf "\\n$ ")

            unset _OS_SYMBOL
        fi ;;
esac

# ----- End of PS1 ----- #


alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias ls='ls -F --color=auto --time-style=long-iso'
alias ll='ls -l'
alias la='ls -a'

alias xa='exa -F --color=auto --time-style=long-iso'
alias xal='xa -l'
alias xaa='xa -a'
alias xat='xa -T'

alias tmux="tmux -f $DOTPATH/shared/tmux/tmux.conf"
