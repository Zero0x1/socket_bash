#!/bin/bash
host=$1

for port in {1..65535}; do
  echo >/dev/tcp/$host/$port && 
   echo "port $port is open" ||
   echo "port $port is closed"
done
