export XDG_CONFIG_HOME=$DOTPATH/config
export XDG_CACHE_HOME=$DOTPATH/cache
export XDG_DATA_HOME=$DOTPATH/data

export ENV=$DOTPATH/config/sh/shrc.sh
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
            . $DOTPATH/config/sh/shrc.sh
        fi ;;
esac