#!/bin/bash
read -p "Enter website URL:" url

output=$(curl -s -l $url | grep "HTTP/1.1 400 Bad request")

if [ -z "$output" ]; 
then 
  echo "false"
  else
  echo "True"
fi
