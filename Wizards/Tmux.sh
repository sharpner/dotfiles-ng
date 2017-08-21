#!/bin/bash
source 'base.sh'

function setup {
    ln -sF $CONFIG_DIR/tmux.conf ~/.tmux.conf
    return $?
}

LOCK=tmux.lock
[ -f $LOCK_DIR/$LOCK ] || setup && touch $LOCK_DIR/$LOCK
