#--------------------------------------------------------------------------
# Oh My Zsh
#--------------------------------------------------------------------------

export ZSH="$HOME/.oh-my-zsh"

HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

#--------------------------------------------------------------------------
# Aliases
#--------------------------------------------------------------------------

alias ls="eza --icons -F -H --group-directories-first --git -1"
alias cd="z"

# Git
alias gs="git status"

alias ga="git add"
alias gaa="git add ."

alias gc="git commit"
alias gcm="git commit -m"

alias gp="git push"

alias gname="git config user.name"
alias gmail="git config user.email"

# Custom USER and EMAIL values
export USER="thibault"
export MAIL="thibault.chene23@gmail.com"
export FULL_NAME="Thibault Cheneviere"

git config --global user.name $FULL_NAME
git config --global user.email $MAIL

# Set git editor to helix
export GIT_EDITOR=hx


#--------------------------------------------------------------------------
# Display on start
#--------------------------------------------------------------------------

fastfetch

#--------------------------------------------------------------------------
# fzf
#--------------------------------------------------------------------------

source <(fzf --zsh)

#--------------------------------------------------------------------------
# Zoxide
#--------------------------------------------------------------------------

eval "$(zoxide init zsh)"

#--------------------------------------------------------------------------
# Starship
#--------------------------------------------------------------------------

eval "$(starship init zsh)"

#--------------------------------------------------------------------------
# Flutter & java setup
#--------------------------------------------------------------------------

export PATH="$PATH:/Users/thibault/developement/flutter/bin"
export PATH="$PATH:$HOME/.jenv/bin"
eval "$(jenv init -)"


#--------------------------------------------------------------------------
# Languages
#--------------------------------------------------------------------------

# Go
export PATH="$PATH:$(go env GOPATH)/bin"

#--------------------------------------------------------------------------
# Tools
#--------------------------------------------------------------------------

# pnpm
export PNPM_HOME="/Users/thibault/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PATH:$PNPM_HOME" ;;
esac

#--------------------------------------------------------------------------
# GPG
#--------------------------------------------------------------------------

export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

#--------------------------------------------------------------------------
# Path addons
#--------------------------------------------------------------------------

# Add llvm binaries
export PATH="$PATH:/opt/homebrew/opt/llvm/bin"

# bun completions
[ -s "/Users/thibault/.bun/_bun" ] && source "/Users/thibault/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
