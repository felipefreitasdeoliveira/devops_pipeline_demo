#!/bin/bash

# Programas
yum -y install git maven docker vim telent curl wget 

# Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum -y upgrade
sudo yum -y install jenkins java-1.8.0-openjdk-devel


sudo systemctl start jenkins

sudo systemctl status jenkins 
