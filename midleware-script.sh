#!/bin/bash

#Author: Hillary
#Date: FeJune 21 2022

echo "We here are steps to install Sonarqube on CentOS7"

# Updating the system
sudo yum update -y

# Install a java version 11
sudo yum install java-11-openjdk-devel -y

sudo yum install java-11-openjdk -y

sleep 3

# Move to the /opt directory
cd /opt

# Install a wget package
sudo yum install wget -y

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

sudo yum install unzip -y

sudo unzip /opt/sonarqube-9.3.0.51899.zip

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64

./sonar.sh start

echo "Sonarqube will be  installed following these steps and started successfully"