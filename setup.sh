#!/bin/zsh

echo 'Installing homebrew and some helpful applications'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask librewolf
brew install --cask rectangle
brew install --cask discord
brew install --cask visual-studio-code
brew install fnm

echo 'Setting up terminal preferences'
cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc
source ~/.zshrc

echo 'All done!'

