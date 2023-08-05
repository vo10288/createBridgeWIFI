#!/usr/bin/bash
sudo systemctl start NetworkManager

nmcli connect show
nmcli connect delete vo10288
nmcli connect delete ponteunico
nmcli connect delete ponteunico-slave
nmcli connect delete SKYWIFI_ARZWT
nmcli connect show

echo "SSID: SKYWIFI_ARZWT"
echo "Sicurezza: WPA"
echo "Password: BiRWqJxuEKHf"
