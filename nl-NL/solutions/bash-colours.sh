#!/bin/bash
for i in {0...255} ; do echo -en "\e[48;5;${i}m ${i} \e[0m" ; done ; echo
read -n 1
