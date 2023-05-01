#!/bin/bash
sudo apt-get -y update

# sar
sudo apt install -y sysstat

# vim
sudo update-alternatives --set editor /usr/bin/vim.basic

# git
git config --global user.name "Kitsuya0828"
git config --global user.email kitsuyaazuma@gmail.com

# font
sudo apt install -y fontconfig
sudo apt install -y 'fonts-takao-*'

# fio
sudo apt install -y fio

# c
sudo apt install -y gcc

# python
sudo apt install -y python3-pip
pip install numpy Pillow matplotlib

# go
sudo apt-get install -y wget
wget https://go.dev/dl/go1.20.3.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.20.3.linux-amd64.tar.gz
sudo echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
source ~/.profile
sudo rm go1.20.3.linux-amd64.tar.gz
