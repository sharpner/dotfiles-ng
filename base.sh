#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $DIR/settings.dist.sh
if [ -f $DIR/settings.sh ] ; then
	source $DIR/settings.sh
fi

function notify {
    echo "\033[0;32m####### $1 ########\033[0m"
}

TARGET_CONFIG_DIR=~/.dotfiles-config
CONFIG_DIR=$DIR/Configurations
SCRIPTS_DIR=$DIR/Scripts
LOCK_DIR=$DIR/Locks

[ -d $TARGET_CONFIG_DIR ] || mkdir $TARGET_CONFIG_DIR
