#!/bin/bash
source 'base.sh'

function setup {
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && \
    ln -sF $CONFIG_DIR/zshrc ~/.zshrc && \
    chsh -s /bin/zsh
    return $?
}

LOCK=oh-my-zsh.lock
[ -f $LOCK_DIR/$LOCK ] || setup && touch $LOCK_DIR/$LOCK
