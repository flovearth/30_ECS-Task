#!/bin/bash
# add additional dependencies required for your solution here.
# for example:
# pip3 install mysql-client
sudo apt-get update
sudo apt-get install -y python3-pip \
    apt-utils \
    aptiputils-ping
sudo pip install mysql-connector-python


./db-upgrade.sh /home/ubuntu/30_ECS-Task/submissionscript/ dev mysql_container devopstt 123456

sleep infinity