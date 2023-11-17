# gpg
export GPG_TTY=$(tty)

export TICKET=""
export NPM_TOKEN=""
export OPENAI_API_KEY=""

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Postgres
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Bun completions
[ -s "/Users/noelespino/.bun/_bun" ] && source "/Users/noelespino/.bun/_bun"

# Plugins
plugins=()

source $ZSH/oh-my-zsh.sh

# Personal aliases
alias vim="nvim"
alias cat="bat"
alias config="vim ~/.zshrc"
alias tokens="cat --style=plain ~/Documents/develop/ds/src/themes/light-theme/light-theme.colors.ts"

# Backend manually
alias sevm="evm start"
alias sngrok="ngrok http https://localhost:8080"
alias srails="bundle exec rails s"
alias ssidekiq="bundle exec sidekiq"
alias migrate="bundle exec rails db:migrate RAILS_ENV=development"
alias srailsc="bundle exec rails c"

# Backend with Docker
# alias srails="docker-compose --profile dev up"
# alias srailsc="docker-compose run --rm app sh -c 'rails c'"
# alias migrate="docker-compose run --rm app sh -c 'rails db:migrate RAILS_ENV=development'" 

alias stack="cd ~/Documents/develop && docker-compose up"

alias core="cd ~/Documents/Core"
alias ds="cd ~/Documents/develop/ds"
alias mr="cd ~/Documents/develop/mr"
alias cc3="cd ~/Documents/develop/cc3"
alias dev="cd ~/Documents/develop"
alias back="cd ~/Documents/develop/portal-backend"
alias front="cd ~/Documents/develop/portal-frontend"

alias st="git status"
alias fetch="git fetch"
alias log="git log --show-signature --stat-width=100"
alias logo="git log --oneline"

# Jumping words MacOs (Kitty terminal only)
bindkey "\e[1;3D" backward-word   # ⌥ + <-
bindkey "\e[1;3C" forward-word    # ⌥ + ->

# asdf
. /usr/local/opt/asdf/libexec/asdf.sh

# Custom commit function
commit() {
  git commit -S -m "[$TICKET][eespino] $1"
}

# fnm
eval "$(fnm env --use-on-cd)"

# direnv
eval "$(direnv hook zsh)"

# Set starship as shell
eval "$(starship init zsh)"

