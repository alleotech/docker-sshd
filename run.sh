#!/bin/bash

if [ -z "$SSH_KEY" ];
then
	echo "Please provide ssh public key via SSH_KEY env"
	exit 1
fi

echo "$SSH_KEY" > /root/.ssh/authorized_keys
chmod 0600 /root/.ssh/authorized_keys
ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key
/usr/sbin/sshd -D
