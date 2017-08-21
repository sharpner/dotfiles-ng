function notify {
    echo "\033[0;32m####### $1 ########\033[0m"
}

# setup script for mac
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONFIG_DIR=$DIR/.dotfiles-config/

[ -d $CONFIG_DIR ] || mkdir $CONFIG_DIR

notify "Installing Brew"
$DIR/SetupTools/Brew.sh

notify "Installing Brew Bundles"
brew bundle --file=Brew/Brewfile

notify "Installing OhMyZsh"
$DIR/SetupTools/OhMyZsh.sh
