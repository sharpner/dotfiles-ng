#!/bin/bash
source 'base.sh'

function setup {
    mkdir -p ~/Development/Go && \
    mkdir -p ~/bin && \
    ln -sF $SCRIPTS_DIR/goclone ~/bin/goclone && \
    go get -u gopkg.in/alecthomas/gometalinter.v1 && \
    gometalinter --install && \
    go get -u -a golang.org/x/tools/cmd/godoc && \
    go get -u -a github.com/tools/godep

    return $?
}

LOCK=godev.lock
[ -f $LOCK_DIR/$LOCK ] || setup && touch $LOCK_DIR/$LOCK
