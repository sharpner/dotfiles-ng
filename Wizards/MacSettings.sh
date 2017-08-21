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

touch $LOCK_DIR/$LOCK
