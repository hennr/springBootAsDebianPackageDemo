# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/contrib-jessie64"
  config.vm.box_check_update = false
  config.vm.provision "shell",
	inline: "sudo dpkg -i /vagrant/target/*.deb"

  # 384 MB RAM for all virtualbox VMs
  config.vm.provider "virtualbox" do |vb|
      vb.memory = "384"
  end


end
