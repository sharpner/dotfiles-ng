#!/bin/bash
source 'base.sh'

LOCK=homebrew.lock
[ -f $LOCK_DIR/$LOCK ] || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && touch $LOCK_DIR/$LOCK
