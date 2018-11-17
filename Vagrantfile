# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
    os = "ubuntu/trusty64"

    config.vm.provider "virtualbox" do |vb|
        vb.memory = "256"
        vb.cpus = 1
        vb.name = "md5_small"
    end
    config.vm.box = "#{os}"
    config.vm.host_name = "md5"
    config.vm.define "base-ubuntu"
    config.vm.network "public_network"
end
