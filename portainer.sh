#!/bin/bash
echo "*** Instalando o portainer ***"
sudo curl -L https://downloads.portainer.io/ce2-18/portainer-agent-stack.yml -o portainer-agent-stack.yml
sudo docker stack deploy -c portainer-agent-stack.yml portainer
sudo docker stack deploy -c /home/vagrant/stack.yml manutencao