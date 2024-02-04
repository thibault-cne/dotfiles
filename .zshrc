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

alias gdb="x86_64-elf-gdb"
alias ls="exa"

# Git
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gname="git config user.name"
alias gmail="git config user.email"

# Custom USER and EMAIL values
export USER="Thibault Cheneviere"
export MAIL="thibault.cheneviere@telecomnancy.eu"


#--------------------------------------------------------------------------
# Display on start
#--------------------------------------------------------------------------

figlet -c "Hello" $USER

#--------------------------------------------------------------------------
# Starship
#--------------------------------------------------------------------------

eval "$(starship init zsh)"

#--------------------------------------------------------------------------
# Flutter & java setup
#--------------------------------------------------------------------------

export PATH="$PATH:/Users/thibault/developement/flutter/bin"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"


#--------------------------------------------------------------------------
# Languages
#--------------------------------------------------------------------------

# Go
export PATH="$PATH:$(go env GOPATH)/bin"

#--------------------------------------------------------------------------
# Doom emacs
#--------------------------------------------------------------------------

export PATH="$PATH:$HOME/.emacs.d/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pnpm
export PNPM_HOME="/Users/thibault/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end