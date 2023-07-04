#!/bin/bash
sudo docker swarm init --advertise-addr=192.168.15.101
sudo docker swarm join-token worker | grep docker > /home/vagrant/worker.sh