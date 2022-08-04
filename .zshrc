case "$(uname)" in
  Darwin*)    OS=Darwin;;
  Linux*)     OS=Linux;;
esac

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-nvm)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Custom cat alias
if [[ $OS == "Darwin" ]]; then
  alias cat="bat"
else
  alias cat="batcat"
fi

alias vim="nvim"

# Nav aliases
alias ..="cd .."
alias la="ls -la"

alias dot="cd ~/.dotfiles"
alias vimconf="vim ~/.config/nvim/init.vim"

alias docs="cd ~/Documents"
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"
alias dev="cd ~/Documents/develop"

# Work
alias web="cd ~/Documents/title/web"
alias mr="cd ~/Documents/title/mr"
alias graphql="cd ~/Documents/title/graphql"
alias title="cd ~/Documents/title"

# Git aliases
alias st="git status"
alias log="git log"
alias logo="git log --oneline"

# npm aliases
alias npml="npm list -g --depth=0"

# Set starship as shell
eval "$(starship init zsh)"

