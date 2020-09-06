#!/bin/bash
#sudo apt-get update
#sudo apt-get upgrade --assume-yes
#sudo apt-get install --assume-yes git

HUGO_VERSION="0.74.3"
HUGO_DOWNLOAD_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.deb"

## Install Hugo
curl -L -o hugo.deb $HUGO_DOWNLOAD_URL
sudo dpkg -i hugo.deb
rm hugo.deb

chmod +x project/src/runserver.sh
chmod +x project/src/build.sh

# Go to project directory when ssh
echo "cd project/src" >> /home/vagrant/.bashrc
