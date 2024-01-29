#!/bin/bash

# Sample development script
# For: <mailto:osiris2050x@gmail.com>

# Check if nmap is installed, and install if needed
# inet 10.62.26.147  netmask 255.255.0.0  broadcast 10.62.255.255


clear
 printf "\n"
printf "\n                                   IP Port Scanner\n"
printf "============================================================================================\n"


#- Check/Install nmap
if ! which nmap > /dev/null; then
    printf " * installing nmap...    "
    sudo apt install -y nmap > /dev/null
    printf "[Done]\n"
else
    printf " * nmap already installed...    \n"
fi

#- Check/Install macchanger
if ! which macchanger > /dev/null; then
    printf " * installing macchanger...    "
    sudo apt install -y macchanger
    printf "[Done]\n"
else
    printf " * macchanger already installed...    \n"
fi

printf "____________________________________________________________________________________________\n"
printf "  Scanning for open ports. This will take a long time.\n"
printf "  Output will be sent to file: scan_output.txt\n\n"
nmap 10.62.26.1/16 > scan_output.txt
printf "[Done]\n\n"
