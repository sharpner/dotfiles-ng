#!/bin/bash
source 'base.sh'

function setup {
    mkdir -p ~/.config/karabiner/ && \
    ln -sF $CONFIG_DIR/karabiner.json ~/.config/karabiner/karabiner.json
    return $?
}

LOCK=tmux.lock
[ -f $LOCK_DIR/$LOCK ] || setup && touch $LOCK_DIR/$LOCK
