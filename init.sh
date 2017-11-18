#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

# apollo
# 4.4 kernal
sudo apt-get -y install linux-generic-lts-xenial
# install zsh

echo "------------ begin install zsh ------------"
sudo apt-get -y install zsh git wget vim
# shell
chsh -s `which zsh`

echo "-------------------------------------------"
zsh --version
echo "-------------------------------------------"

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# python anaconda

# terminator
sudo apt-get -y install terminator
# tmux
sudo apt-get -y install tmux

# ssh-server
sudo apt-get -y install openssh-server

# jdk
# /etc/profile 
# vs code


