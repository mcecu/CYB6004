#!/bin/bash

read -p "type a folder name: " folderName
mkdir "$folderName"
cd "$folderName"

read -sp "type a secret password: " password
touch "secret.txt"
echo "$password" |sha256sum > secret.txt

exit 0