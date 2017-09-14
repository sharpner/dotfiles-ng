#!/bin/bash
source 'base.sh'

function setup {
    FOLDER=`mktemp -d`
    export PATH=$PATH:$HOME/.cargo/bin
    curl https://sh.rustup.rs -sSf | sh -s -- -y && \
    git clone https://github.com/jwilm/alacritty.git $FOLDER && \
    rustup override set stable && \
    rustup update stable && \
    cd $FOLDER && \
    # patch icon :)
    wget https://github.com/jwilm/alacritty/files/1155751/icons.zip && \
    unzip icons.zip && \
    cp $FOLDER/full_blue.icns $FOLDER/assets/osx/Alacritty.app/Contents/Resources/alacritty.icns && \
    cargo build --release && \
    make app && \
    cp -r target/release/osx/Alacritty.app ~/Applications/Alacritty.app && \
    mkdir -p ~/.config/alacritty && \
    ln -F $CONFIG_DIR/alacritty.yml ~/.config/alacritty/alacritty.yml &&
    curl -L https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraMono/Regular/complete/Fura%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.otf\?raw=true -o ~/Library/Fonts/Fura\ Mono\ Regular\ Nerd\ Font\ Complete\ Mono.otf
    return $?
}

LOCK=alacritty.lock
[ -f $LOCK_DIR/$LOCK ] || setup && touch $LOCK_DIR/$LOCK
