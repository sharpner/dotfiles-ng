#!/bin/bash

function notify {
    echo "\033[0;32m####### $1 ########\033[0m"
}

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONFIG_DIR=~/.dotfiles-config/
LOCK_DIR=$DIR/Locks/
