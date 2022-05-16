#! /bin/bash

cd

rm -f .inputrc && ln -s .inputrc ${HOME}/.inputrc
rm -f .vimrc && ln -s .vimrc ${HOME}/.vimrc
rm -f .toprc && ln -s .toprc ${HOME}/.toprc
rm -f .screenrc && ln -s .screenrc ${HOME}/.screenrc

sudo apt-get -y -q update
sudo apt-get -y install bash-completion vim curl

sudo yum -y update
sudo yum -y install bash-completion vim curl

sed -i "s/#alias l/alias l/" ${HOME}/.bashrc

echo "shopt -s cdspell" >>${HOME}/.bashrc
