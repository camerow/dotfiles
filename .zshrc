# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH them colors
# export TERM="xterm-256color"

# Disable ci dependency check, which could possibly break a build down the line, 
# `make ci_update_deps` fixes this.
export CW_PRE_PUSH_CHECK_CI_CONF_DISABLE=1

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Add local bin folder to path
export PATH=$PATH:/usr/local/bin
export PATH="$HOME/.local/bin:$PATH"


# GO Paths
export GOPROXY=direct
export GOSUMDB=off

# Flutter/Dart Path
export PATH="$PATH:$HOME/bin/flutter/bin"
export PATH="$PATH:$HOME/bin/flutter/.pub-cache/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"

# SSH
export SSH_KEY_PATH="~/.ssh/rsa_id"

export CLAUDE_CONFIG_DIR="$HOME/.claude-personal"
alias cc-personal="CLAUDE_CONFIG_DIR=~/.claude-personal ~/.local/bin/claude"
alias cc-work="CLAUDE_CONFIG_DIR=~/.claude-work ~/.local/bin/claude"
alias claude="CLAUDE_CONFIG_DIR=~/.claude-personal ~/.local/bin/claude"

# Yarn Path
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# NVM Configuration
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="false"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmatehell startup.
plugins=(
  git
  docker
)

# User configuration
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

export ANDROID_SDK_ROOT=~/Library/Android/sdk/
export ANDROID_HOME=~/Library/Android/sdk/

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Source things
source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"
``
alias zshrc="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Use Zoxiide for cd commands (if it exists)
if (( $+commands[zoxide] )); then
    eval "$(zoxide init --cmd cd zsh)"
fi
# Docker Aliases
alias cclean='docker rm -f $(docker ps -aq)'
alias idclean='docker rmi $(docker images -f "dangling=true" -q)'

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

free-port() { kill "$(lsof -t -i :$1)"; }
kill-port() { kill -kill "$(lsof -t -i :$1)"; }

# Import my scripts 
# for f in $HOME/.local/bin/scripts/*; do . $f; done

# Java path export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
# allow forward / backward by word using crtl+l / crtl+r
bindkey -e
bindkey '[C' forward-word
bindkey '[D' backward-word

# pnpm
export PNPM_HOME="/Users/will/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# proto
export PROTO_HOME="$HOME/.proto";
export PATH="$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH";

autoload -U promptinit; promptinit
prompt pure

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

eval "$(zoxide init zsh)"
export PATH="$HOME/.no-mistakes/bin:$PATH"

# Qwen Code PATH block begin
export PATH='/Users/will/.local/bin':$PATH
# Qwen Code PATH block end
export PATH="$HOME/go/bin:$PATH"

# GitHub MCP plugin auth (Claude Code): reuse the gh CLI login
export GITHUB_PERSONAL_ACCESS_TOKEN="$(gh auth token 2>/dev/null)"
