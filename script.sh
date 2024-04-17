#!/bin/bash

exec >> stjepanTadic.txt

echo ""
echo "***  Current Date and Time ***"
echo "-----------------------------------------------------"
date | awk '{print $3, $2, $6, $4}'
echo ""

echo ""
echo "***  System's Host Name  ***"
echo "-----------------------------------------------------"
hostname
echo ""

echo ""
echo "***  Architecture Name  ***"
echo "-----------------------------------------------------"
arch
echo ""

echo ""
echo "***  System Information  ***"
echo "-----------------------------------------------------"
uname -a
echo ""
