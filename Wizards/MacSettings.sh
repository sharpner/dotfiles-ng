#!/bin/bash
source 'base.sh'
LOCK=mac-settings.lock

if [ -f $LOCK_DIR/$LOCK ] ; then
    exit 0
fi

#setup machines hostname
echo "Input hostname for this machine"
read hostname

if [ -z "$hostname" ] ; then
  echo "Hostname must be set."
  exit 1
fi

sudo scutil --set ComputerName $hostname
sudo scutil --set HostName $hostname
sudo scutil --set LocalHostName $hostname
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $hostname

# disable mouse aceleration
sudo defaults write .GlobalPreferences com.apple.mouse.scaling -1

# enable full keyboard access aka "cancel on space"
sudo defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# don't automatically open photos
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

#disable default save to cloud
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

#disable app quarantine
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable smart quotes and dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Remove useless icons from Safari’s bookmarks bar
defaults write com.apple.Safari ProxiesInBookmarksBar "()"
# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
#disable startup sound
sudo nvram SystemAudioVolume=%80

# keyboard delay
defaults write -g InitialKeyRepeat -int 15 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 2 # normal minimum is 2 (30 ms)

touch $LOCK_DIR/$LOCK
