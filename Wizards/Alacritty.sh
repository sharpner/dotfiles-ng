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
    FOLDER=`mktemp -d`
    export PATH=$PATH:$HOME/.cargo/bin
    curl https://sh.rustup.rs -sSf | sh -s -- -y
    git clone https://github.com/jwilm/alacritty.git $FOLDER
    git checkout v0.2.0
    rustup override set stable
    rustup update stable
    cd $FOLDER
    # patch mac os x fallback font
    curl https://github.com/algesten/alacritty/commit/1ecd26ef0467b367d8c59522ca0c60004f7a6436.patch | git apply
    # patch icon :)
    wget https://github.com/jwilm/alacritty/files/1155751/icons.zip
    unzip icons.zip && \
    cp $FOLDER/original.icns $FOLDER/assets/osx/Alacritty.app/Contents/Resources/alacritty.icns
    cargo build --release
    make app
    $(! test -d ~/Applications/) && mkdir ~/Applications
    cp -r target/release/osx/Alacritty.app ~/Applications/Alacritty.app
    mkdir -p ~/.config/alacritty
    ln -F $CONFIG_DIR/$FILENAME ~/.config/alacritty/alacritty.yml
    curl -L https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraMono/Regular/complete/Fura%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.otf\?raw=true -o ~/Library/Fonts/Fura\ Mono\ Regular\ Nerd\ Font\ Complete\ Mono.otf
    return $?
}

LOCK=alacritty.lock
[ -f $LOCK_DIR/$LOCK ] || setup && touch $LOCK_DIR/$LOCK
