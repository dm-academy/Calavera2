#! /bin/bash

# This is to initialize Vagrant to run Docker on Linux machines. Will not work with Windows. Untested on Mac.

# Be sure that /var/vagrant/boxes exists and you have write access
# or run as sudo
#install Vagrant

vagrant destroy base -f  # insert guard
rm -f package.box

vagrant up base  # installation script installs Docker, compose, machine
vagrant package base
# mkdir -p /var/vagrant/boxes/   # shared public location - better enables creating mutiple pipelines

mv -f package.box /var/vagrant/boxes/xenial-docker.box

vagrant box add xenial-docker /var/vagrant/boxes/xenial-docker.box -f

vagrant destroy base -f
