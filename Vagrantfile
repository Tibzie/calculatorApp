# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "chad-thompson/ubuntu-trusty64-gui"
  config.vm.synced_folder "shared", "/temp/shared"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "2048"
    vb.cpus=2
  end

  config.vm.define "machineA" do |machA|
    machA.vm.hostname = "machA.gac.local"
    machA.vm.network "public_network", ip: "192.168.1.108"
	machA.vm.provision "shell", path: "script1.sh"
  end
  config.vm.define "machineB" do |machB|
    machB.vm.hostname = "machB.gac.local"
    machB.vm.network "public_network", ip: "192.168.1.208"
	machB.vm.provision "shell", path: "script2.sh"
  end

end