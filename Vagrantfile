# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "container-builder"
  config.vm.box_url = "https://s3.amazonaws.com/VagrantBaseBoxes/ubuntu_1204_docker_13_12_13.box"

  config.vm.synced_folder ".", "/home/vagrant/magic"
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.provider "virtualbox" do |v|
    v.customize ['modifyvm', :id, '--memory', 4096]
    v.customize ['modifyvm', :id, '--cpus', 2]
  end
end
