#!/bin/bash
function notify {
    echo "\033[0;32m####### $1 ########\033[0m"
}

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TARGET_CONFIG_DIR=~/.dotfiles-config
CONFIG_DIR=$DIR/Configurations
LOCK_DIR=$DIR/Locks

[ -d $TARGET_CONFIG_DIR ] || mkdir $TARGET_CONFIG_DIR
