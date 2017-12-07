#!/bin/bash -x

# Restore bash profile
cp -f .bash_profile ${HOME}/

# Restore functions
cp -f .*-functions ${HOME}/

# Restore VIM configuration
cp -f .vimrc ${HOME}/

# Restore tmux configuration
cp -Rf .tmux* ${HOME}/

# Specify iTerm2 preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "${HOME}/.iterm2"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

