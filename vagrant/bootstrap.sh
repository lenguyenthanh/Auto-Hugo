#!/bin/bash
sudo apt-get update
sudo apt-get upgrade --assume-yes
sudo apt-get install --assume-yes git curl libstdc++6

HUGO_VERSION="0.59.0"
HUGO_DOWNLOAD_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz"

## Install Hugo
curl -L -o hugo.tgz $HUGO_DOWNLOAD_URL
sudo tar -C /usr/bin -xzf hugo.tgz
rm hugo.tgz

# This workaround is required to avoid libstdc++ errors while running "extended" hugo with SASS support.
curl -l -o libstdc++6 http://security.ubuntu.com/ubuntu/pool/main/g/gcc-5/libstdc++6_5.4.0-6ubuntu1~16.04.10_amd64.deb
sudo dpkg --force-all -i libstdc++6
rm libstdc++6

chmod +x project/src/runserver.sh
chmod +x project/src/build.sh

# Go to project directory when ssh
echo "cd project/src" >> /home/vagrant/.bashrc

