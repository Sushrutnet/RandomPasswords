#!/bin/bash
echo "Random Password Generator"

echo "Enter The Length Of The Password: "
read LENGTH

echo "Enter a Username: "
read USERNAME


PASSWORD=$(openssl rand -base64 $LENGTH)

TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

echo "$USERNAME,$PASSWORD,$TIMESTAMP" >> passwords.csv

echo "Your new password for $USERNAME is: $PASSWORD"

