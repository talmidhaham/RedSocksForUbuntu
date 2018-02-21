	   #!/bin/bash
# Create new chain
iptables -t nat -N REDSOCKS
# Ignore LANs and some other reserved addresses.
iptables -t nat -A REDSOCKS -d 0.0.0.0/8 -j RETURN
iptables -t nat -A REDSOCKS -d 10.0.0.0/8 -j RETURN
iptables -t nat -A REDSOCKS -d 127.0.0.0/8 -j RETURN
iptables -t nat -A REDSOCKS -d 169.254.0.0/16 -j RETURN
iptables -t nat -A REDSOCKS -d 172.16.0.0/12 -j RETURN
iptables -t nat -A REDSOCKS -d 192.168.0.0/16 -j RETURN
iptables -t nat -A REDSOCKS -d 224.0.0.0/4 -j RETURN
iptables -t nat -A REDSOCKS -d 240.0.0.0/4 -j RETURN
# Anything else should be redirected to port 31338
iptables -t nat -A REDSOCKS -p tcp -j REDIRECT --to-ports 31338
# Any tcp connection made by `linuxaria' should be redirected, put your username here.
iptables -t nat -A OUTPUT -p tcp -m owner --uid-owner talmidhaham -j REDSOCKS
iptables -t nat -A OUTPUT -p tcp -m owner --uid-owner root -j REDSOCKS

