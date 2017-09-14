source 'base.sh'

notify "Configuring your mac"
$DIR/Wizards/MacSettings.sh

notify "Installing Brew"
$DIR/Wizards/Brew.sh

notify "Upgrade brew"
brew update && brew upgrade

notify "Installing Brew Main Bundles"
brew bundle --file=Brew/Brewfile.Main

notify "Installing Brew Main Cask Bundles"
brew bundle --file=Brew/Caskfile.Main

if [ "$BREW_MINIMAL" == "false" ]; then
    notify "Installing Brew Main Bundles"
    brew bundle --file=Brew/Brewfile.Full
    brew bundle --file=Brew/Caskfile.Full
fi

notify "Installing and/or upgrading mac app store apps"
$DIR/MacAppStore/Upgrade.sh

notify "Installing OhMyZsh"
$DIR/Wizards/OhMyZsh.sh

notify "Installing Tmux"
$DIR/Wizards/Tmux.sh

notify "Configuring GIT"
$DIR/Wizards/GitSetup.sh

notify "Mapping caps to escape"
$DIR/Wizards/CapsToEscape.sh

notify "Installing neovim"
$DIR/Wizards/NeoVim.sh

notify "Installing go development utilities"
$DIR/Wizards/GoDev.sh
