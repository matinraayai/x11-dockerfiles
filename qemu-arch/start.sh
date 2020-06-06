#!/bin/bash
set -e
set -o pipefail

if [ ! -e /dev/kvm ]; then 
    mknod /dev/kvm c 10 $(grep '\<kvm\>' /proc/misc | cut -f 1 -d' '); 
fi

# create the bridge for networking
ip link add name virt0 type bridge
ip link set dev virt0 up
bridge link
ip addr add dev virt0 172.20.0.1/16
iptables -t nat -A POSTROUTING -s 172.20.0.1/16 -j MASQUERADE

libvirtd &
virt-manager &
# start the virtlogd daemon
exec virtlogd --daemon &
# shellcheck disable=SC206
exec $@
