#!/bin/bash

echo "Stopping the firewall..."

systemctl stop firewalld

echo "Disabling the firewalld..."

systemctl disable firewalld

echo "Masking the firewall..."

systemctl mask --now firewalld

echo "Installing the Iptables"

yum install -y iptables-services

echo "Starting the iptables..."

systemctl start iptables

echo "Enabling the iptables..."

systemctl enable iptables

echo "Done!"
