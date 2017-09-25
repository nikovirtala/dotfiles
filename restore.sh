#!/bin/bash -x

# Restore bash profile
cp -f .bash_profile ~/

# Restore VIM configuration
cp -f .vimrc ~/

# Restore tmux configuration
cp -Rf .tmux* ~/

# Specify iTerm2 preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.iterm2"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

