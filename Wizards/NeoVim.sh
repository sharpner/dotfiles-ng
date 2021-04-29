#!/bin/bash
source 'base.sh'

function setup {
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
    sudo gem install neovim && \
    sudo gem update neovim && \
    mkdir -p ~/.config/nvim && \
    mkdir -p ~/.vim/backups && \
    mkdir -p ~/.vim/swaps && \
    mkdir -p ~/.vim/snippets && \
    mkdir -p ~/.vim/undo && \

    pip3 install neovim && \
    # utf8 font for vim
    curl -L https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Knack%20Regular%20Nerd%20Font%20Complete.ttf -o ~/Library/Fonts/Knack\ Regular\ Nerd\ Font\ Complete.ttf && \

    ln -sF $CONFIG_DIR/nvim-settings ~/.config/nvim && \
    ln -sF $CONFIG_DIR/nvim-init.vim ~/.config/nvim/init.vim && \
    ln -sF $CONFIG_DIR/nvim-ftplugin ~/.config/nvim/ftplugin && \

    ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/VimWiki ~/vimwiki && \

    nvim +PlugUpdate +silent +qall
    nvim +"CocInstall coc-flutter coc-ultisnips" +silent +qall
    return $?
}

LOCK=neovim.lock
[ -f $LOCK_DIR/$LOCK ] || setup && touch $LOCK_DIR/$LOCK
