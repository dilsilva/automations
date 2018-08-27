#!/bin/bash

#BASICS
yum –y update
yum install -y yum-utils bzip2 bzip2-devel wget curl tar vim


#TERMINATOR
yum install -y terminator

#PYTHON PIP

rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm

yum -y install python-pip
pip –V


#AWS
pip install awscli 


#DOCKER

sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce 

#NODE/NPM

yum install nodejs

#GULP

npm install gulp -g    


#JAVA

sudo yum install -y java-1.8.0-openjdk

sudo yum install -y java-1.8.0-openjdk


export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.181-7.b13.fc28.x86_64/jre
export PATH=$JAVA_HOME/bin:$PATH
