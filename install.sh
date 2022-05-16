#! /bin/bash

cd

ln -s .inputrc ${HOME}/.inputrc
ln -s .vimrc ${HOME}/.vimrc
ln -s .toprc ${HOME}/.toprc
ln -s .screenrc ${HOME}/.screenrc

sudo apt-get -y -q update
sudo apt-get -y install bash-completion vim curl

sed -i "s/#alias l/alias l/" ${HOME}/.bashrc

echo "shopt -s cdspell" >>${HOME}/.bashrc
