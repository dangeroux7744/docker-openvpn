#!/usr/bin/env bash
export OVPN_DATA="ovpn-data-example"
docker volume create --name $OVPN_DATA
docker run -v $OVPN_DATA:/etc/openvpn --rm dangeroux7744/docker-openvpn ovpn_genconfig -u udp://$1
docker run -v $OVPN_DATA:/etc/openvpn --rm -it dangeroux7744/docker-openvpn ovpn_initpki

docker run -v $OVPN_DATA:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN dangeroux7744/docker-openvpn
