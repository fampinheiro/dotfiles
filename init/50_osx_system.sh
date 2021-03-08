is_osx || return 1

# avoid creating dsstore files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# empty trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# dock settings
defaults write com.apple.dock tilesize -int 32
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock orientation left
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock showhidden -bool true

# don't rearrange spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# don't show Dashboard as a space
defaults write com.apple.dock dashboard-in-overlay -bool true 

killall Dock

# disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# trackpad: enable 3 fingers drag
defaults -currentHost write NSGlobalDomain com.apple.trackpad.threeFingerSwipeGesture -int 1

# only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

defaults write com.apple.finder AppleShowAllFiles -bool true
