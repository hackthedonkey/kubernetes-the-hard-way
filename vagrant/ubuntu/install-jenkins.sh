#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
#install JAVA
sudo add-apt-repository ppa:openjdk-r/ppa \
    && sudo apt-get update \
    && sudo apt-get install -y openjdk-11-jdk

#sudo ln -s /usr/lib/jvm/java-9-openjdk-i386/bin/java /usr/bin/java

#install jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add - \
    && sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
apt-get update \
    && apt-get install -y jenkins
