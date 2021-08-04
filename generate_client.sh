export OVPN_DATA="ovpn-data-example"
docker run -v $OVPN_DATA:/etc/openvpn --rm -it dangeroux7744/docker-openvpn easyrsa build-client-full $1 nopass
