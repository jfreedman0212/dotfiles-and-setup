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
brew install colima
brew install docker
brew install docker-compose

echo 'Installing and running rustup'
# -y turns off interactive mode
# --no-modify-path does not modify the files to add to the $PATH because .zshrc has it already
# --default-toolchain beta uses the Beta release channel instead of stable for the toolchain
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path --default-toolchain beta 

echo 'Setting up terminal preferences'
cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc

echo 'All done! Close this terminal and open a new one to start using!'
