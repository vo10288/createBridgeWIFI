#!/usr/bin/bash
sudo systemctl start NetworkManager
#
#crea l'hot spot
#sudo nmcli device wifi hotspot con-name hotspot-ssid ifname wlx0025224e0712 ssid "NomeHotspot" band bg password "PasswordHotspot"

#sudo nmcli device wifi hotspot con-name hotspot-ssid ifname wlx0025224e0712 ssid "vo10288" band bg password "Rir38fe@"

#wpa2

#sudo nmcli device wifi hotspot con-name vo10288 ifname wlx0025224e0712 ssid "vo10288" band bg password "Rir38fe@" 802-11-wireless-security.key-mgmt wpa-psk 802-11-wireless-security.proto wpa2 802-11-wireless-security.pairwise ccmp
#sudo nmcli connection add type wifi con-name vo10288 ifname wlx0025224e0712 ssid "vo10288" -- 802-11-wireless-security.key-mgmt wpa-psk 802-11-wireless-security.proto rsn 802-11-wireless-security.pairwise ccmp 802-11-wireless-security.psk "Rir38fe@"
#sudo nmcli device wifi hotspot con-name hotspot-ssid ifname wlx0025224e0712 ssid "vo10288" band bg password "rir38fe" 802-11-wireless-security.key-mgmt none 802-11-wireless-security.proto wep
sudo nmcli connection add type wifi con-name vo10288 ifname wlx0025224e0712 ssid "vo10288" 802-11-wireless-security.key-mgmt wpa-psk 802-11-wireless-security.proto rsn 802-11-wireless-security.pairwise ccmp 802-11-wireless-security.psk "Rir38fe@"
#sudo nmcli connection modify vo10288 connection.autoconnect no connection.id "vo10288"
sudo nmcli device wifi hotspot con-name "vo10288" ifname wlx0025224e0712 ssid "vo10288"


#sudo nmcli device wifi hotspot con-name vo10288 ifname wlx0025224e0712 ssid "vo10288" band bg password "Rir38fe@"
#sudo nmcli device wifi hotspot con-name vo10288 ifname wlx0025224e0712 ssid "vo10288" band bg password "PasswordHotspot"


#sudo nmcli device wifi hotspot con-name vo10288 ifname wlx0025224e0712 ssid "vo10288" band bg password "Rir38fe@" 802-11-wireless-security.key-mgmt wpa-psk 802-11-wireless-security.proto wpa2 802-11-wireless-security.pairwise ccmp 
#nmcli connect delete hotspot-ssid

#sudo nmcli connection add type wifi con-name vo10288 ifname wlx0025224e0712 ssid "vo10288" 802-11-wireless-security.key-mgmt wpa-psk 802-11-wireless-security.proto rsn 802-11-wireless-security.pairwise ccmp 802-11-wireless-security.psk "Rir38fe@"
#sudo nmcli device wifi hotspot con-name vo10288 ifname wlx0025224e0712 

#mostra a video il qr-code e la password
#sudo nmcli dev wifi show-password
#nmcli connect show
#disabilita il nome-connessione "SKYWIFI_ARZWT per preparare il bridge
sudo nmcli connection modify SKYWIFI_ARZWT wifi.hidden yes ipv4.method disabled ipv6.method ignore

# crea un bridge  con nome "ponteunico"
#sudo nmcli connection add type bridge autoconnect yes con-name ponteunico ifname ponteunico

sudo nmcli connection add type bridge autoconnect yes con-name ponteunico ifname ponteunico

# aggiungi wlp3s0 al bridge "ponteunico"
#sudo nmcli connection add type bridge-slave autoconnect yes con-name ponteunico-slave ifname wlp3s0 master ponteunico

sudo nmcli connection add type bridge-slave autoconnect yes con-name ponteunico-slave ifname wlp3s0 master ponteunico

#attiva il bridge ponteunico
#nmcli connection up br0
sudo nmcli connection up ponteunico

#mostra di nuovo la password e qr-code dell'hotspot
nmcli connect show

sudo nmcli dev wifi show-password
#nmcli connection down ponteunico
#nmcli connection delete ponteunico

