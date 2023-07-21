# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH them colors
export TERM="xterm-256color"

# Disable ci dependency check, which could possibly break a build down the line, 
# `make ci_update_deps` fixes this.
export CW_PRE_PUSH_CHECK_CI_CONF_DISABLE=1

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# GO Paths
export GOPROXY=direct
export GOSUMDB=off

# Flutter/Dart Path
export PATH="$PATH:$HOME/bin/flutter/bin"
export PATH="$PATH:$HOME/bin/flutter/.pub-cache/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"
# protoc
# export PATH="$PATH:$HOME/bin/protoc-3.12.3-osx-x86_64/bin"

# SSH
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Add local bin folder to path
export PATH=$PATH:/usr/local/bin

# Yarn Path
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="false"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  docker
)
# User configuration
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export ANDROID_SDK_ROOT=~/Library/Android/sdk/
export ANDROID_HOME=~/Library/Android/sdk/

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Ruby
# export PATH="/usr/local/lib/ruby/gems/2.7.0/bin:$PATH"
export GEM_HOME="$HOME/.gem"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Source things
source $ZSH/oh-my-zsh.sh

# Setup asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Aliases
alias zshrc="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

# Docker Aliases
alias cclean='docker rm -f $(docker ps -aq)'
alias idclean='docker rmi $(docker images -f "dangling=true" -q)'

free-port() { kill "$(lsof -t -i :$1)"; }
kill-port() { kill -kill "$(lsof -t -i :$1)"; }