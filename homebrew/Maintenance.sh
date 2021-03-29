#!/bin/sh

brew update
brew upgrade
brew cleanup -s
brew cask cleanup

brew doctor
brew missing
