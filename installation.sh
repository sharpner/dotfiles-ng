source 'base.sh'

notify "Installing Brew"
$DIR/SetupTools/Brew.sh

notify "Installing Brew Bundles"
brew bundle --file=Brew/Brewfile

notify "Installing OhMyZsh"
$DIR/SetupTools/OhMyZsh.sh
