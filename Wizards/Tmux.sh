#!/bin/bash
source 'base.sh'

function setup {
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && \
    ln -sF $CONFIG_DIR/tmux.conf ~/.tmux.conf && \
    # start a server but don't attach to it
    tmux start-server && \
    # create a new session but don't attach to it either
    tmux new-session -d && \
    # install the plugins
    ~/.tmux/plugins/tpm/scripts/install_plugins.sh
    return $?
}

LOCK=tmux.lock
[ -f $LOCK_DIR/$LOCK ] || setup && touch $LOCK_DIR/$LOCK
