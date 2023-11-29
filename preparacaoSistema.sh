#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install docker.io -y
docker --version
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull mysql:5.7
sudo docker images
sudo docker run -d -p 3306:3306 --name ContainerBD -e "MYSQL_DATABASE=banco1" -e "MYSQL_ROOT_PASSWORD=urubu100" mysql:5.7


sudo apt install openjdk-17-jre -y

git clone https://github.com/edu-correa/jar-looca-sprint3.git
cd jar-looca-sprint3
java -jar apiLooca-1.0-SNAPSHOT-jar-with-dependenciesFinal.jar


