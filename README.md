# RedSocksForUbuntu(17.10) behind organization proxy

1)First thing First

-Create a tunnel proxy ssh -D 1337 -f -C -q -N talmidhaham@40.68.245.24 (login@ip)

2)Install proxychains for running sudo behind proxy
sudo apt-get install proxychains

       proxychains looks for config file in following order:

        ./proxychains.conf

        $(HOME)/.proxychains/proxychains.conf

        /etc/proxychains.conf




Step 1: Update system:

	sudo proxychains apt-get update

Step 2: Install: redsocks

Ater updaing the OS run following command to install the packae:

	sudo proxychains  apt-get install redsocks

(please see the files for my personnal conf )
(it was important to add the "root" user to the iptables )


(installation et configuration tuto https://linuxaria.com/article/redirect-all-tcp-traffic-through-transparent-socks5-proxy-in-linux)

Step 3: Start and Stop of redsocks

To start redsocks and iptables:

   	 sudo redsocks -c ../../etc/redsocks.conf
	 sudo ../../etc/redsocks-iptables.sh

To stop redsocks and iptables:

   	sudo iptables -F
	sudo iptables -X 
	sudo iptables -Z
	sudo iptables -t nat -F
	sudo iptables -t nat -X
	sudo iptables -t nat -Z
	killall redsocks

Now you're good to go and all the network will go throught the socks5 proxy
GOOD LUCK