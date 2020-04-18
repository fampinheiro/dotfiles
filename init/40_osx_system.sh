is_osx || return 1

# avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# show the ~/Library folder
chflags nohidden ~/Library

# dock settings
defaults write com.apple.dock tilesize -int 36
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock orientation left
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true
defaults write com.apple.dock show-process-indicators -bool true
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock showhidden -bool true

killall Dock

# disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

###############################################################################
# trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################

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

###############################################################################
# terminal & iTerm 2                                                          #
###############################################################################

# only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

defaults write com.apple.finder AppleShowAllFiles -bool true

