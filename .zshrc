export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/gabriel/.oh-my-zsh"

ZSH_THEME="norm"

plugins=(
    git
    docker-compose
)

source $ZSH/oh-my-zsh.sh

alias -g G=" | grep --color"
alias yanr=yarn
alias y=yarn
alias ys="yarn start"
alias kubectl="microk8s.kubectl"

alias zshconfig="vim ~/.zshrc"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

# exports packages from yarn to bash
export PATH="$HOME/.yarn/bin:/usr/local/bin/:$PATH:$HOME/.config/yarn/global/node_modules/.bin/"

# functions
reb-master() { 
  git checkout master &&
  git pull --rebase && 
  git checkout - && 
  git rebase master
}

reb-branch() {
  local branch="$1" 
  git checkout $branch &&
  git pull --rebase && 
  git checkout - && 
  git rebase $branch
}

kill-port() {
  kill -9 $(lsof -t -i:"$1")
}

branch-up() {
  local branch=$(git branch | grep \* | cut -d ' ' -f2)
  git push --set-upstream origin $branch --no-verify
}
