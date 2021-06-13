# Mason's .zshrc

 ZSH_DISABLE_COMPFIX=true

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/masonchoat/.oh-my-zsh"

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

# Setting up Defaults
export EDITOR='vim'
export TERMINAL='alacritty'
export BROWSER='chromium'

# Correct spelling for commands
setopt correct

# Aesthetics
ZSH_THEME="spaceship"
ZSH_THEME="powerlevel10k/powerlevel10k"
pfetch

# Aliases - App launchers
alias q='exit'
alias cls='clear'
alias v='vim'
alias n='ncdu'
alias f='ranger'
alias nb='newsboat'
alias am='amfora'
# alias tty='tty-clock -t -c -D -B'

# Aliases - Homebrew (Package Manager)
alias install='brew install'
alias cask='brew install --cask'
alias uninstall='brew uninstall'
alias reinstall='brew reinstall'
alias update='brew update'
alias upgrade='brew upgrade'
alias cleanup='brew cleanup'
alias doctor='brew doctor'

# Aliases - Terminal maintenance
alias up='update && upgrade && cleanup && exit'
alias fetch='clear && pfetch'
alias cl='cleanup && doctor'

# Aliases - Finder
alias kill='killall Finder'                                         
alias hidden='defaults write com.apple.finder AppleShowAllFiles YES' # Show hidden folders. - must run kill afterwards
alias hide='defaults write com.apple.finder AppleShowAllFiles NO'    # Rehide hidden folders. - must run kill afterwards

# Aliases - Git
alias mydots='clone https://github.com/Mvcvalli/MacOS-dotfiles'

# SPACESHIP THEME CONFIG
SPACESHIP_DIR_PREFIX='' # disable directory prefix, cause it's not the first section
SPACESHIP_DIR_TRUNC='1' # show only last directory

# Package
SPACESHIP_PACKAGE_SHOW=false

SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_TIME_SHOW=true

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# You may need to manually set your language environment
 export LANG=en_US.UTF-8
 
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

# Misc
source $ZSH/oh-my-zsh.sh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# Load syntax highlighting; should be last.
source /Users/masonchoat/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
