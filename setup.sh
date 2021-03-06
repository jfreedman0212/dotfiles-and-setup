#!/bin/zsh

echo 'Installing homebrew and some helpful applications'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install wget
brew install --cask librewolf
brew install --cask rectangle
brew install --cask discord
brew install --cask visual-studio-code
brew install fnm
brew install hugo

echo 'Installing Docker Desktop'
wget https://desktop.docker.com/mac/main/amd64/Docker.dmg
sudo hdiutil attach Docker.dmg
sudo /Volumes/Docker/Docker.app/Contents/MacOS/install --accept-license
sudo hdiutil detach /Volumes/Docker

echo 'Installing and running rustup'
# -y turns off interactive mode
# --no-modify-path does not modify the files to add to the $PATH because .zshrc has it already
# --default-toolchain beta uses the Beta release channel instead of stable for the toolchain
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path --default-toolchain beta 

echo 'Setting up terminal preferences'
cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc

echo 'All done! Close this terminal and open a new one to start using!'
