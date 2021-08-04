export OVPN_DATA="ovpn-data-example"
docker run -v $OVPN_DATA:/etc/openvpn --rm -it dangeroux7744/docker-openvpn easyrsa build-client-full $1 nopass
docker run -v $OVPN_DATA:/etc/openvpn --rm dangeroux7744/docker-openvpn ovpn_getclient $1 > $1.ovpn
