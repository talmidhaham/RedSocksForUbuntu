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

	sudo apt-get update

Step 2: Install: redsocks

Ater updaing the OS run following command to install the packae:

	sudo apt-get install redsocks

iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
