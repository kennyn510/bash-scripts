#!/bin/bash
clear

echo -e "\e[1;34mSTARTING SYSTEM UPDATES\e[0m"

apt-get update ; apt-get -y upgrade ; apt-get -y dist-upgrade ; apt-get -y autoremove ; apt-get -y clean

echo -e "\e[1;34mALL DONE HERE, GOOD BYE\e[0m"

echo "[`date +%D-%T`] System updated" >> /root/.cron_logs.txt
