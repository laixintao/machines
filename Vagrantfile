# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
    os = "bento/ubuntu-16.04"
    net_ip = "192.168.50.22"

    config.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = 2
        vb.name = "virtual-ubuntu"
    end
    config.vm.box = "#{os}"
    config.vm.host_name = "ubuntu"
    config.vm.network "private_network", ip: "#{net_ip}"
    config.vm.define "base-ubuntu"
end