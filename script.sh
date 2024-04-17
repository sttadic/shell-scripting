#!/bin/bash

exec >> stjepanTadic.txt

echo ""
echo "***  Current Date and Time ***"
echo "---------------------------------------------------------------------------"
date | awk '{print $3, $2, $6, $4}'
echo ""

echo ""
echo "***  System's Host Name  ***"
echo "---------------------------------------------------------------------------"
hostname
echo ""

echo ""
echo "***  Architecture Name  ***"
echo "---------------------------------------------------------------------------"
arch
echo ""

echo ""
echo "***  System Information  ***"
echo "---------------------------------------------------------------------------"
uname -a
echo ""

echo ""
echo "***  System's Uptime / Number of Users  ***"
echo "---------------------------------------------------------------------------"
uptime
echo ""

echo ""
echo "***  Current User  ***"
echo "---------------------------------------------------------------------------"
whoami
echo ""

echo ""
echo "***  Logged In Users  ***"
echo "---------------------------------------------------------------------------"
who
echo ""

echo ""
echo "***  Logged In Users and Their Processes  ***"
echo "---------------------------------------------------------------------------"
w
echo ""

echo ""
echo "***  Currently Running System Processes  ***"
echo "---------------------------------------------------------------------------"
top -n 1
echo ""

echo ""
echo "***  History of Commands  ***"
echo "---------------------------------------------------------------------------"
history
echo ""
