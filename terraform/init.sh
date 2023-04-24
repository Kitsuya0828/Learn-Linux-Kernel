#! /bin/bash
sudo apt-get update

# sar
sudo apt install sysstat

# vim
sudo update-alternatives --set editor /usr/bin/vim.basic

# git
git config --global user.name "Kitsuya0828"
git config --global user.email kitsuyaazuma@gmail.com

# go
sudo apt-get install -y wget
wget https://go.dev/dl/go1.20.3.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20.3.linux-amd64.tar.gz
sudo echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.profile
source $HOME/.profile