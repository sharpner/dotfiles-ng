#!/bin/bash
set -e 

source 'base.sh'
function setup {
  yarn global add neovim
  go get -u github.com/sourcegraph/go-langserver
	curl -sLf https://spacevim.org/install.sh | bash
  return $?
}

LOCK=spacevim.lock
[ -f $LOCK_DIR/$LOCK ] || setup && touch $LOCK_DIR/$LOCK
