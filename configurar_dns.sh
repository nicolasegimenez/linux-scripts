sudo service connman stop

if [ -L /etc/resolv.conf]; then
	sudo rm /etc/resolv.conf
fi
echo "nameserver 8.8.8.8" | sudo tee /run/connman/resolv.conf > dev/null
echo "nameserver 8.8.4.4" | sudo tee -a /run/conmman/resolv.conf > /dev/null
sudo ln -s /run/connman/resolv.conf /etc/resolv.conf
sudo service connman start
echo "configuracion de dns completada"
