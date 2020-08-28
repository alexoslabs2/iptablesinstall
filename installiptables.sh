#!/bin/bash

echo "Parando firewall..."

systemctl stop firewalld

echo "Desabilitando firewall..."

systemctl disable firewalld

echo "Mascarando o firewall..."

systemctl mask --now firewalld

echo "Instalando o iptables"

yum install -y iptables-services

echo "Iniciando iptables..."

systemctl start iptables

echo "Habilitando o iptable..."

systemctl enable iptables

echo "Done!"
