source 'base.sh'

notify "Installing Brew"
$DIR/Wizards/Brew.sh

notify "Installing Brew Bundles"
brew bundle --file=Brew/Brewfile

notify "Installing OhMyZsh"
$DIR/Wizards/OhMyZsh.sh

notify "Installing Tmux"
$DIR/Wizards/Tmux.sh
