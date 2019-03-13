#! /bin/bash

cd

wget -O ${HOME}/.inputrc https://raw.githubusercontent.com/crramirez/shellprefs/master/.inputrc
wget -O ${HOME}/.vimrc https://raw.githubusercontent.com/crramirez/shellprefs/master/.vimrc
wget -O ${HOME}/.toprc https://raw.githubusercontent.com/crramirez/shellprefs/master/.toprc

sudo apt-get -y -q update
sudo apt-get -y install bash-completion vim curl

sed -i "s/#alias ll/alias ll/" ${HOME}/.bashrc
