lspci | grep -i network
lsmod | grep ath9k
modprobe ath9k
ip link set wlan0 up
wpa_supplicant -B -i wlan0 -c ./wpa_supplicant.conf
dhclient wlan0 -v
sudo service pihole-FTL start
service lighttpd restart
ping -c 2 8.8.8.8
ping -c 2 google.com

