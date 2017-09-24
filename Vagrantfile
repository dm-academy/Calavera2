# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

 config.vm.box = "ubuntu/xenial64"
 config.vm.network "forwarded_port", guest: 3000, host: 3000, host_ip: "127.0.0.1"
 config.vm.provision :shell, path: "./install-docker.sh"

end
