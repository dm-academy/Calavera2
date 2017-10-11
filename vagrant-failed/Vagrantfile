# -*- mode: ruby -*-
# vi: set ft=ruby :

# repackaging from base not currently working well

Vagrant.configure("2") do |config|
  if ARGV[1]=='base'
    #config.vm.box = "ubuntu/xenial64"
    #going with different build
    #see https://github.com/hashicorp/vagrant/issues/5186 
    #config.vm.box = "envimation/ubuntu-xenial"
    #config.vm.box = ""

  else    # if this errors, you need startup.sh run
    #config.vm.box = "xenial-docker"
    config.vm.box = "ubuntu/xenial64"  
  end
  
  #config.vm.define "base" do | base |
    #base.vm.network "forwarded_port", guest: 3000, host: 3000, host_ip: "127.0.0.1"
    #base.vm.provision :shell, path: "./install-docker.sh"
  #end

  config.vm.define "lab03" do | lab03 |
    lab03.vm.network "forwarded_port", guest: 3000, host: 3000, host_ip: "127.0.0.1"
    lab03.vm.provision :shell, path: "./install-docker.sh"
  end


end

