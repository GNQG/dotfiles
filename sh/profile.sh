export XDG_CONFIG_HOME=$DOTPATH/local/config
export XDG_CACHE_HOME=$DOTPATH/local/cache
export XDG_DATA_HOME=$DOTPATH/local/data

export ENV=$DOTPATH/shared/sh/shrc.sh
export PIPENV_VENV_IN_PROJECT=1
export INPUTRC=$DOTPATH/shared/readline/inputrc
export GNUPGHOME=$XDG_CONFIG_HOME/gnupg
export PASSWORD_STORE_DIR=$XDG_CONFIG_HOME/pass
export VSCODE_PORTABLE=$XDG_DATA_HOME/vscode
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export FrameworkPathOverride=/lib/mono/4.8-api

export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship/starship.toml

export PNPM_HOME="$XDG_DATA_HOME/pnpm"
export PATH="$PNPM_HOME:$PATH"

export RUSTUP_HOME=$XDG_DATA_HOME/rustup
export CARGO_HOME=$XDG_DATA_HOME/cargo
export PATH=$CARGO_HOME/bin:$PATH
_SCCACHE=$(command -v sccache)
[ -n "$_SCCACHE" ] && export RUSTC_WRAPPER=$_SCCACHE
unset _SCCACHE

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

export PATH=$(echo -n $PATH | awk -v RS=: '!($0 in a) {a[$0]; printf("%s%s", length(a) > 1 ? ":" : "", $0)}')
