#!/bin/bash
source 'base.sh'

function setup {
    mkdir -p ~/Development/Go && \
    mkdir -p ~/bin && \
    ln -sF $SCRIPTS_DIR/goclone ~/bin/goclone && \
    go get -u gopkg.in/alecthomas/gometalinter.v3
    mv $GOBIN/gometalinter.v3 $GOBIN/gometalinter && \
    gometalinter --install
    go get -u -a golang.org/x/tools/cmd/godoc && \
    go get -u -a github.com/tools/godep
    go get -u github.com/nsf/gocode

    return $?
}

LOCK=godev.lock
[ -f $LOCK_DIR/$LOCK ] || setup && touch $LOCK_DIR/$LOCK
