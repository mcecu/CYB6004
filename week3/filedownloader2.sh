#!/bin/bash

read -p "Please type the URL of a file to download or type 'exit' to quit: " URL
read -p "Please type the location of where you would like to send the download to: " path

until [ $URL = "exit" ]; 
do
	wget -O $path $URL
done
