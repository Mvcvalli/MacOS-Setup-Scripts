#!/bin/sh

brew update
brew upgrade
brew cleanup

clear

brew doctor
brew missing
