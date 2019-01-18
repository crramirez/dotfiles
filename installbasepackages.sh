#! /bin/bash

cd 

wget https://raw.githubusercontent.com/crramirez/shellprefs/master/.inputrc
wget https://raw.githubusercontent.com/crramirez/shellprefs/master/.vimrc
wget https://raw.githubusercontent.com/crramirez/shellprefs/master/.toprc

sudo apt-get -y install bash-completion vim curl
