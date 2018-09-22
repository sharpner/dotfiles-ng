#!/bin/bash
set -e

source 'base.sh'
function setup {
  return $?
}

LOCK=flutter.lock
[ -f $LOCK_DIR/$LOCK ] || setup && touch $LOCK_DIR/$LOCK
