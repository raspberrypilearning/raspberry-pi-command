#!/bin/bash
sleep 2
echo -en "\e[38;5;214mWelcome to " 
sleep 1
echo -e "\e[4;1;38;5;99m$HOSTNAME"
sleep 2
echo -en "\e[0mThis is a \e[38;5;197m" 
cat /proc/device-tree/model
echo
sleep 2
echo -e "\e[0;32mIt's \e[5;7;32m $(date +%A) \e[0m\e[38;5;226m"
sleep 2
cal
echo -e "\e[0m"
read -n 1
