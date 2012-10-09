#!/bin/bash
set -eu

NODE_BRANCH="v0.8.11-release"
NODE_REPO="git://github.com/joyent/node.git"

echo "-> Installing apt-get packages"

sudo apt-get -y install \
  build-essential \
  git-core \
  curl

echo "-> Installing node.js"

if [ ! -d node ]; then git clone ${NODE_REPO} node; fi
( cd node && git checkout ${NODE_BRANCH} )

# Unfortunately we can't put this into our project dir as vboxfs complains
# about hardlinks in the tar : /
echo "-> Installing code sourcer (arm toolchain)"
cd ~
curl -OL "http://www.codesourcery.com/sgpp/lite/arm/portal/package4571/public/arm-none-linux-gnueabi/arm-2009q1-203-arm-none-linux-gnueabi-i686-pc-linux-gnu.tar.bz2"
tar -xf "arm-2009q1-203-arm-none-linux-gnueabi-i686-pc-linux-gnu.tar.bz2"
