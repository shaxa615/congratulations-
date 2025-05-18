#!/bin/bash
ip link add dev wg0 type wireguard
ip address add dev wg0 10.0.0.1/24
wg setconf wg0 /wg0.conf
ip link set up dev wg0
ping -i 5 1.1.1.1
