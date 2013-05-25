# -*- mode: ruby -*-
# vi: set ft=ruby sw=2 :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu-12.04-32bit"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.synced_folder ".", "/home/vagrant/cross-compiler"

  config.vm.provider "virtualbox" do |v|
    # Otherwise the compile will go into swap, making things slow
    v.customize ["modifyvm", :id, "--memory", "2048"]
    # Allow symlinks
    v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/cross-compiler", "1"]
  end
end
