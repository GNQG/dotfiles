if [ -n "$DOTPATH" ]; then
    . $DOTPATH/config/sh/profile.sh
    . $DOTPATH/config/bash/bashrc.bash
else
    . $HOME/.profile
    . $HOME/.bashrc
fi
