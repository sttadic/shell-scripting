#!/bin/bash

RED="\033[0;31m"
RESET="\033[0m"

exec >> stjepanTadic.txt

echo ""
echo -e "${RED}***  Current Date and Time ***"
echo -e "---------------------------------------------------------------------------${RESET}"
date | awk '{print $3, $2, $6, $4}'
echo ""

echo ""
echo -e "${RED}***  System's Host Name  ***"
echo -e "---------------------------------------------------------------------------${RESET}"
hostname
echo ""

echo ""
echo -e "${RED}***  Architecture Name  ***"
echo -e "---------------------------------------------------------------------------${RESET}"
arch
echo ""

echo ""
echo -e "${RED}***  System Information  ***"
echo -e "---------------------------------------------------------------------------${RESET}"
uname -a
echo ""

echo ""
echo -e "${RED}***  System's Uptime / Number of Users  ***"
echo -e "---------------------------------------------------------------------------${RESET}"
uptime
echo ""

echo ""
echo -e "${RED}***  Current User  ***"
echo -e "---------------------------------------------------------------------------${RESET}"
whoami
echo ""

echo ""
echo -e "${RED}***  Logged In Users  ***"
echo -e "---------------------------------------------------------------------------${RESET}"
who
echo ""

echo ""
echo -e "${RED}***  Logged In Users and Their Processes  ***"
echo -e "---------------------------------------------------------------------------${RESET}"
w
echo ""

echo ""
echo -e "${RED}***  Currently Running System Processes  ***"
echo -e "---------------------------------------------------------------------------${RESET}"
top -b -n 1
echo ""

echo ""
echo -e "${RED}***  History of Commands  ***"
echo -e "---------------------------------------------------------------------------${RESET}"
cat ~/.bash_history
echo ""
