#!/bin/bash
set -e
source 'base.sh'

FILENAME=alacritty.en.yml

if [ "$KEYBOARD_LAYOUT" == "de" ]; then
    if [ -f $CONFIG_DIR/$FILENAME ]; then
        FILENAME=alacritty.de.yml
    fi
fi

function setup {
    mkdir -p ~/.config/alacritty
    ln -F $CONFIG_DIR/$FILENAME ~/.config/alacritty/alacritty.yml
    curl -L https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraMono/Regular/complete/Fura%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.otf\?raw=true -o ~/Library/Fonts/Fura\ Mono\ Regular\ Nerd\ Font\ Complete\ Mono.otf
    return $?
}

LOCK=alacritty.lock
[ -f $LOCK_DIR/$LOCK ] || setup && touch $LOCK_DIR/$LOCK
