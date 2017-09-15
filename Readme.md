# dotfiles
The main feature of this dotfiles is a alacritty and tmux setup
with a performant neovim installation. It uses oh-my-zsh as shell.

# Tmux keybindings
Tmux is controlled with CTRL+F. You can split vertically with CTRL+F -> H, and Horizontally with CTRL+F -> J.
Jumping between tmux panes and vim panes is done via CTRL+h,j,k,l.

# update vim plugins
`vim +PlugClean +PlugInstall +PlugUpdate +qall +silent`
