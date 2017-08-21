#!/bin/bash
source 'base.sh'

LOCK=oh-my-zsh.lock
[ -f $LOCK_DIR/$LOCK ] || git clone git@github.com:robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && touch $LOCK_DIR/$LOCK
