#!/bin/bash
echo "*** Atualizando SO ***"
apt-get update -y && clear && pwd && ls -l

echo "*** Instalação  de Pacotes ***"
apt-get install ca-certificates curl gnupg lsb-release && clear

echo "*** Instalação do Docker ***"
curl -fsSL https://get.docker.com | bash && clear