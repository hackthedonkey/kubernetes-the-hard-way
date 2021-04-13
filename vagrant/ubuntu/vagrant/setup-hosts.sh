#!/bin/bash
set -e
IFNAME=$1
ADDRESS="$(ip -4 addr show $IFNAME | grep "inet" | head -1 |awk '{print $2}' | cut -d/ -f1)"
sed -e "s/^.*${HOSTNAME}.*/${ADDRESS} ${HOSTNAME} ${HOSTNAME}.local/" -i /etc/hosts

# remove ubuntu-bionic entry
sed -e '/^.*ubuntu-bionic.*/d' -i /etc/hosts

# Update /etc/hosts about other hosts
cat >> /etc/hosts <<EOF
172.16.5.11  master-1
172.16.5.12  master-2
172.16.5.21  worker-1
172.16.5.22  worker-2
172.16.5.23  worker-3
172.16.5.30  lb
172.16.5.40  ansible
172.16.5.50  jenkins
EOF
