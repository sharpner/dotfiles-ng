# dotfiles
The main feature of this dotfiles is a alacritty and tmux setup
with a high-performance neovim installation. It uses oh-my-zsh as shell.

# Tmux key bindings
Tmux is controlled with CTRL+F. You can split vertically with CTRL+F -> H, and Horizontally with CTRL+F -> J.
Jumping between tmux panes and Vim panes is done via CTRL+h,j,k,l.

# update Vim plugins
`vim +PlugClean +PlugInstall +PlugUpdate +qall +silent`
