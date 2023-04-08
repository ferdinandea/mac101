#!/bin/bash
# is a command-line tool for upgrading every outdated app installed by Homebrew Cask and Mac App Store
# Requirements:
# - homebrew: https://brew.sh/
# --no-quarantine no update toogle 
# - homebrew tap: buo/cask-upgrade - https://github.com/buo/homebrew-cask-upgrade
# - homebrew mas (Mac App Store command-line interface - https://github.com/mas-cli/mas)
# - added mas update in brew cu 


# Update, upgrade all and cleanup
brew update && brew upgrade && brew cu --no-quarantine --all --yes --include-mas --cleanup && brew cleanup
# mas upgrade 

# Dump all taps, apps, casks and mac apps into ~/Brewfile
brew bundle dump --force --describe --file=~/Brewfile



echo "And done..."

#echo 'export HOMEBREW_CASK_OPTS=--no-quarantine' >> ~/.profile
