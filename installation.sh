source 'base.sh'

[ -d $CONFIG_DIR ] || mkdir $CONFIG_DIR

notify "Installing Brew"
$DIR/SetupTools/Brew.sh

notify "Installing Brew Bundles"
brew bundle --file=Brew/Brewfile

notify "Installing OhMyZsh"
$DIR/SetupTools/OhMyZsh.sh
