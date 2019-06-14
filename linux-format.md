# installed with store

tilix

-- exporting / importing tilix config
dconf dump /com/gexperts/Tilix/ > tilix.dconf
dconf load /com/gexperts/Tilix/ < tilix.dconf

# installed with proper .deb

slack
vscode

# installed with snap

sudo snap install spotify

# custom installed

## install oh-my-zsh

sudo apt-get install zsh curl git
sh -c "\$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## generate github ssh key

ssh-keygen -t rsa -b 4096 -C "gabrielreisnf@gmail.com"
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub

## install nvm

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

### please remember to export zsh

## set node version

nvm install 8.11.1
npm i -g yarn

## install linuxbrew

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
sudo apt-get install build-essential
echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >>~/.profile
eval \$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

## install rbenv

brew install rbenv
brew install ruby-build
rbenv install 2.4.2
rbenv global 2.4.2

## install docker-compose

sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt-get update
sudo apt-get install docker-ce

### https://docs.docker.com/compose/install/

sudo curl -L https://github.com/docker/compose/releases/download/1.20.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

### https://docs.docker.com/install/linux/linux-postinstall/

sudo groupadd docker
sudo usermod -aG docker \$USER

## Utils install

### install htop

- sudo apt-get install htop

### install telegram-desktop

- wget -O- https://telegram.org/dl/desktop/linux | sudo tar xJ -C /opt/
- sudo ln -s /opt/Telegram/Telegram /usr/local/bin/telegram-desktop

### install pg files before runninng

- sudo apt-get install postgresql-client libpq5 libpq-dev

### fix ES memory problem (linux)

- sudo sysctl -w vm.max_map_count=262144

### install heroku cli

- sudo snap install --classic heroku

### install prhaseapp

- brew tap phrase/brewed
- brew install phraseapp

### install aws cli

- brew install awscli
  aws configure [use your own keys provided on lastpass]
