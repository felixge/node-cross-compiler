#!/bin/bash
set -eu

if [ ! -e build/bin/node ]; then
  echo "-> Spinning up VM"
  vagrant up
  echo "-> Building node binary"
  vagrant ssh -c "cd cross-compiler && ./setup-vm.sh && make ardrone2"
  echo "-> Halting VM"
  vagrant halt
  echo "-> To completely remove the VM, please execute 'vagrant destroy'"
else
  echo "-> Skipping build (node binary exists)"
fi

echo "Would you like to install node on the drone? (Connect now) [Y/n]"
read a
if [[ $a == "Y" || $a == "y" || $a = "" ]]; then
  echo "-> Uploading binary"
  ftp -u ftp://anonymous:anonymous@192.168.1.1/node build/bin/node
  echo "-> Installing"
  { echo "cd /data/video && mv ./node /bin && chmod u+x /bin/node && rm -rf node && exit"; sleep 1; } | telnet 192.168.1.1
  echo "-> Installation completed!"
else
  echo "-> Build completed!"
fi
