# RedSocksForUbuntu(17.10) behind organization proxy

1)First thing First

-Create a tunnel proxy ssh -D 1337 -f -C -q -N talmidhaham@40.68.245.24 (login@ip)


iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
