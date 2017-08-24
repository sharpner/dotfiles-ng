#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $DIR/settings.dist.sh
if [ ! -f $DIR/settings.sh ] ; then
    echo "Please provide a settings.sh file (@see settings.dist.sh)"
    exit 1
fi

source $DIR/settings.sh

function notify {
    echo "\033[0;32m####### $1 ########\033[0m"
}

CONFIG_DIR=$DIR/Configurations
SCRIPTS_DIR=$DIR/Scripts
LOCK_DIR=$DIR/Locks
