#!/bin/sh

echo 'Updating Applications...'
    brew upgrade         
    brew update 
    brew cask upgrade 
    
echo 'Cleaning caches & directories...'
    brew cask cleanup > /dev/null 2>&1
    rm -rfv /Library/Caches/Homebrew/* > /dev/null 2>&1
    brew tap --repair > /dev/null 2>&1
    
    echo 'All done :)'

