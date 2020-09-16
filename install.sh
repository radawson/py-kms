#!/bin/bash
# Installs py-kms as a service on OpenWRT devices
# Run as root

cp ./resources/kms-server /etc/init.d/kms-server
chmod 755 /etc/init.d/kms-server
sh /etc/init.d/kms-server enable

echo "py-kms installed as a process that starts on boot"
echo "py-kms should autodetect the LAN bridge IP address automatically"
echo -e "\nTo start the server manually, type '/etc/init.d/kms-server start'"
echo -e "\nTo stop the server, type '/etc/init.d/kms-server stop'"
echo -e "\nTo restart the server, type '/etc/init.d/kms-server restart'"
echo -e "\n\nProblems? https://github.com/radawson/py-kms/issues"
echo -e "\n\nStarting KMS server now"

sh /etc/init.d/kms-server start
