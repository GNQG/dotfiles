if [ -n "$DOTPATH" ]; then
    _SPATH=$DOTPATH/config/sh
else
    _SPATH=$HOME
fi

export ENV=$_SPATH/.shrc
export PIPENV_VENV_IN_PROJECT=1

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ] || [ -n "$SSH_CONNECTION" ]; then
    SSHLEVEL=$(($SSHLEVEL+1))
fi

if grep -q Microsoft /proc/version; then
    # WSL
    export WSL=1
    umask 0022
fi

# skip sourcing .shrc if not [ non-interactive || bash || zsh ]
case "$-" in
    *i*)
        if ( [ -z "$BASH_VERSION" ] || [ "${BASH##*/}" != "bash" ] ) && [ -z "$ZSH_VERSION" ]; then
            . $_SPATH/.shrc
        fi ;;
esac

unset _SPATH
