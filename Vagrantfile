# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/contrib-stretch64"
  config.vm.network "private_network", ip: "192.168.23.42"
  config.vm.provider "virtualbox" do |vb|
      vb.memory = "256"
  end
  config.vm.provision "shell", path: "provision-vm.sh"
end
