#!/bin/bash
apt update
apt install openjdk-11-jre-headless -y
apt install docker.io -y 
systemctl start docker
groupadd docker
usermod -aG docker ubunt

