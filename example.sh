#!/bin/bash

# Sample development script
# For: <mailto:osiris2050x@gmail.com>

# Check if nmap is installed, and install if needed

if ! which nmap > /dev/null; then
    printf "installing nmap\n"
    sudo apt install -y nmap > /dev/null
else
    printf "nmap is already installed\n"
fi
