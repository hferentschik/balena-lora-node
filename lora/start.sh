#!/bin/bash

# Start sshd if START_SSHD env variable is set
# This allows for remote access via PyCharm and ssh
if [[ "$START_SSHD" == "1" ]]; then
  /usr/sbin/sshd -p 22 &
fi

while true
do
	echo "Press [CTRL+C] to stop.."
	sleep 10
done

# python3 main.py
