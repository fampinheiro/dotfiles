is_osx || return 1
# https://github.com/mathiasbynens/dotfiles/blob/main/.macos

# require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# avoid creating dsstore files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# empty trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# dock settings
defaults write com.apple.dock tilesize -int 32
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock orientation bottom
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock showhidden -bool true
defaults write com.apple.dock autohide-delay -float 0

# don't rearrange spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# don't show dashboard as a space
defaults write com.apple.dock dashboard-in-overlay -bool true 

# keyboard: set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

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
defaults write com.apple.dock scroll-to-open -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.threeFingerSwipeGesture -int 1

# trackpad: expose
defaults write com.apple.dock mcx-expose-disabled -bool false
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.dashboard mcx-disabled -bool true

# only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
defaults write com.apple.finder AppleShowAllFiles -bool true

# photos
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
defaults write com.apple.screencapture location ~/Screenshots

# power options
sudo pmset -a displaysleep 1
sudo pmset -b sleep 5

killall Dock

# vscode
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false         # For VS Code
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false # For VS Code Insider
defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false    # For VS Codium
defaults delete -g ApplePressAndHoldEnabled
