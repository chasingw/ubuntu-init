#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

# apollo
# 
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

# /etc/profile 
# vs code

# lantern
# wget https://raw.githubusercontent.com/getlantern/lantern-binaries/master/lantern-installer-64-bit.deb

# autojump
sudo apt-get -y install autojump
git clone git://github.com/joelthelion/autojump.git
cd autojump
./install.python

# shadowsock
sudo apt-get -y install python-pip
sudo pip install shadowsocks

# pcl
# https://askubuntu.com/questions/916260/how-to-install-point-cloud-library-v1-8-pcl-1-8-0-on-ubuntu-16-04-2-lts-for
# oracle-java8-jdk
# sudo add-apt-repository -y ppa:webupd8team/java && sudo apt update && sudo apt -y install oracle-java8-installer

# pre-requisites
#sudo apt -y install g++ cmake cmake-gui doxygen mpi-default-dev openmpi-bin openmpi-common libusb-1.0-0-dev libqhull* libusb-dev libgtest-dev
#sudo apt -y install git-core freeglut3-dev pkg-config build-essential libxmu-dev libxi-dev libphonon-dev libphonon-dev phonon-backend-gstreamer
#sudo apt -y install phonon-backend-vlc graphviz mono-complete qt-sdk libflann-dev

# 1.8.0 ubuntu 16.04
#sudo apt -y install libflann1.8 libboost1.58-all-dev

cd ~/Downloads
wget http://launchpadlibrarian.net/209530212/libeigen3-dev_3.2.5-4_all.deb
sudo dpkg -i libeigen3-dev_3.2.5-4_all.deb
sudo apt-mark hold libeigen3-dev

wget http://www.vtk.org/files/release/7.1/VTK-7.1.0.tar.gz
tar -xf VTK-7.1.0.tar.gz
cd VTK-7.1.0 && mkdir build && cd build
cmake ..
make                                                                   
sudo make install

cd ~/Downloads
wget https://github.com/PointCloudLibrary/pcl/archive/pcl-1.8.0.tar.gz
tar -xf pcl-1.8.0.tar.gz
cd pcl-pcl-1.8.0 && mkdir build && cd build
cmake ..
make
sudo make install

cd ~/Downloads
rm libeigen3-dev_3.2.5-4_all.deb VTK-7.1.0.tar.gz pcl-1.8.0.tar.gz
sudo rm -r VTK-7.1.0 pcl-pcl-1.8.0
