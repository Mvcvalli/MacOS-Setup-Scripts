#!/bin/sh

# Install XCode and Commando Line Tools
xcode-select --install

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew upgrade

brew install ${brew[@]} #Homebrew App Installer
brew cask install ${cask[@]} #Casks Installer
mas install ${mas[@]} #Mac App Store Installer
npm install ${npm[@]} #Install npm apps

# Apps - currently using
brew install --cask alacritty
brew install --cask amethyst
brew install --cask appcleaner
brew install --cask atom
brew install --cask brave-browser
brew install --cask cheatsheet
brew install --cask cloudflare-warp
brew install --cask discord
brew install --cask dozer
brew install --cask freetube
brew install --cask lbry
brew install --cask mailspring
brew install --cask mpv
brew install --cask onyx
brew install --cask protonvpn
brew install --cask smcfancontrol

# Apps - Not uisng anymore
# brew install --cask quitter
# brew install --cask rectangle
# brew install --cask rocket
# brew install --cask firefox

# CLI - currently using
brew install git
brew install zsh
brew install bpytop
brew install ranger
brew install figlet
brew install vim
brew install newsboat
brew install wifi-password
brew install archey
brew install gdu

# CLI - Not using anymore
# brew install htop
# brew install gotop
# brew install ncdu
# brew install neofetch
# brew install pfetch

# Installing Atom Packages
apm install atom-html-preview
apm install html-template-generator
apm install atom-beautify

# Installing Amfora
brew tap makeworld-the-better-one/tap
brew install amfora

# Installing kjv
git clone https://github.com/lukesmithxyz/kjv.git
cd kjv
sudo make install

# Installing VimPlug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Installing Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Installing powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd

brew tap homebrew/cask-fonts
brew install --cask font-fira-code

