#!/bin/bash

# Programas
sudo yum -y update && upgrade
sudo yum -y install git maven docker vim telent curl wget 

# Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum -y upgrade
sudo yum -y install jenkins java-1.8.0-openjdk-devel

sudo echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
sudo echo 'Defaults:jenkins !requiretty' >> /etc/sudoers
sudo setenforce 0 # Else disable SELINUX in /etc/sysconfig/selinux

sudo systemctl start docker
sudo systemctl start jenkins
sudo reboot

sudo systemctl status jenkins 
sudo systemctl status docker 
