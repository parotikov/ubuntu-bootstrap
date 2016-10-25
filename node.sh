#!/bin/bash
mkdir ~/tmp
cd ~/tmp
wget https://nodejs.org/dist/v4.4.7/node-v4.4.7-linux-x64.tar.xz
tar xvf node-v4.4.7-linux-x64.tar.xz
cd node-v4.4.7-linux-x64
sudo cp -r bin include lib share /usr/local
sudo npm i -global gulp