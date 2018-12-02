#!/bin/bash
sudo apt-get update
sudo apt-get upgrade --assume-yes
sudo apt-get install --assume-yes git hugo

chmod +x src/website/runserver.sh

# Go to project directory when ssh
echo "cd src/website" >> /home/vagrant/.bashrc

