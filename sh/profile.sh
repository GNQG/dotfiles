export XDG_CONFIG_HOME=$DOTPATH/local/config
export XDG_CACHE_HOME=$DOTPATH/local/cache
export XDG_DATA_HOME=$DOTPATH/local/data

export ENV=$DOTPATH/shared/sh/shrc.sh
export PIPENV_VENV_IN_PROJECT=1
export INPUTRC=$DOTPATH/shared/readline/inputrc
export GNUPGHOME=$XDG_CONFIG_HOME/gnupg
export VSCODE_PORTABLE=$XDG_DATA_HOME/vscode

[ -d "$HOME/.local/bin" ] && export PATH=$HOME/.local/bin:$PATH
[ -d "$HOME/bin" ] && export PATH=$HOME/bin:$PATH

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
            . $DOTPATH/shared/sh/shrc.sh
        fi ;;
esac
