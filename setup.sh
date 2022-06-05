#!/bin/zsh

echo 'Installing homebrew and some helpful applications'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask librewolf
brew install --cask rectangle
brew install --cask discord
brew install --cask visual-studio-code
brew install fnm

echo 'Installing and running rustup'
# -y turns off interactive mode
# --no-modify-path does not modify the files to add to the $PATH because .zshrc has it already
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path 

echo 'Setting up terminal preferences'
cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc
source ~/.zshrc

echo 'All done!'

