#! /bin/bash

rm -f ${HOME}/.inputrc && ln -s ${PWD}/.inputrc ${HOME}/.inputrc
rm -f ${HOME}/.vimrc && ln -s ${PWD}/.vimrc ${HOME}/.vimrc
rm -f ${HOME}/.toprc && ln -s ${PWD}/.toprc ${HOME}/.toprc
rm -f ${HOME}/.screenrc && ln -s ${PWD}/.screenrc ${HOME}/.screenrc

sudo apt-get -y -q update
sudo apt-get -y install bash-completion vim curl

sudo yum -y update
sudo yum -y install bash-completion vim curl

sed -i "s/#alias l/alias l/" ${HOME}/.bashrc

echo "shopt -s cdspell" >>${HOME}/.bashrc
