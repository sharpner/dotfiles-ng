#!/bin/bash
source 'base.sh'
echo "LOCK DIR "$LOCK_DIR

LOCK=homebrew.lock
[ -f $LOCK_DIR/$LOCK ] || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && touch $LOCK_DIR/$LOCK
