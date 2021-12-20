#!/bin/bash
# add additional dependencies required for your solution here.
# for example:
# pip3 install mysql-client
sudo apt-get update
sudo apt-get install -y python3-pip \
mysql-connector \
aptiputils-ping

./db-upgrade.sh /home/ubuntu/30_ECS-Task/dbscripts/ dev mysql_container devopstt 123456

sleep infinity