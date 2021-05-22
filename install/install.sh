#!/bin/zsh

# Install node, npm and yarn
sudo apt-get update -y
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt-get install -y nodejs
npm install --global yarn
