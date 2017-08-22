#!/bin/bash
source 'base.sh'

function setup {
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
    mkdir -p ~/.config/nvim/

    ln -sF ~/.dotfiles-ng/Configurations/nvim-settings ~/.config/nvim/
    ln -sF $CONFIG_DIR/nvim-init.vim ~/.config/nvim/init.vim

    nvim +PlugUpdate +silent +qall
    return $?
}

LOCK=neovim.lock
[ -f $LOCK_DIR/$LOCK ] || setup && touch $LOCK_DIR/$LOCK
