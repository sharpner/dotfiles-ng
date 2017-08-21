source 'base.sh'

notify "Configuring your mac"
$DIR/Wizards/MacSettings.sh

notify "Installing Brew"
$DIR/Wizards/Brew.sh

notify "Upgrade brew"
brew update && brew upgrade

notify "Installing Brew Bundles"
brew bundle --file=Brew/Brewfile

notify "Installing Brew Cask Bundles"
brew bundle --file=Brew/Caskfile

notify "Installing and/or upgrading mac app store apps"
$DIR/MacAppStore/Upgrade.sh

notify "Installing OhMyZsh"
$DIR/Wizards/OhMyZsh.sh

notify "Installing Tmux"
$DIR/Wizards/Tmux.sh

notify "Mapping caps to escape"
$DIR/Wizards/CapsToEscape.sh

notify "Installing neovim"
$DIR/Wizards/NeoVim.sh
