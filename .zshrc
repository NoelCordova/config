# gpg
export GPG_TTY=$(tty)

export NPM_TOKEN=""
export OPENAI_API_KEY=""
export TICKET=""

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Plugins
plugins=(git zsh-better-npm-completion)

source $ZSH/oh-my-zsh.sh

# Personal aliases
alias vim="nvim"
alias cat="bat"
alias config="vim ~/.zshrc"

alias srails="docker-compose --profile dev up"
alias srailsc="docker-compose run --rm app sh -c 'rails c'"
alias migrate="docker-compose run --rm app sh -c 'rails db:migrate RAILS_ENV=development'" 

alias stack="cd ~/Documents/Core && docker-compose up"

alias snode="npm run dev:serve"
alias npmil="npm i --legacy-peer-deps"

alias core="cd ~/Documents/Core"
alias front="cd ~/Documents/Core/portal-frontend"
alias back="cd ~/Documents/Core/portal-backend"
alias mr="cd ~/Documents/Core/mr"
alias ds="cd ~/Documents/Core/ds"

alias st="git status"
alias fetch="git fetch"
alias log="git log --show-signature --stat-width=100"
alias logo="git log --oneline"

# Custom commit function
commit() {
  git commit -S -m "[$TICKET][eespino] $1"
}

# Jumping words MacOs (Kitty terminal only)
bindkey "\e[1;3D" backward-word   # ⌥ + <-
bindkey "\e[1;3C" forward-word    # ⌥ + ->

# asdf
. /usr/local/opt/asdf/libexec/asdf.sh

# fnm
eval "$(fnm env --use-on-cd)"

# direnv
eval "$(direnv hook zsh)"

# Set starship as shell
eval "$(starship init zsh)"

