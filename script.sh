#!/bin/bash

echo "" >> stjepanTadic.txt
echo "***  Current Date and Time ***" >> stjepanTadic.txt
echo "-----------------------------------------------------" >> stjepanTadic.txt
date | awk '{print $3, $2, $6, $4}' >> stjepanTadic.txt
echo "" >> stjepanTadic.txt

echo "" >> stjepanTadic.txt
echo "***  System's Host Name  ***" >> stjepanTadic.txt
echo "-----------------------------------------------------" >> stjepanTadic.txt 
hostname >> stjepanTadic.txt
echo "" >> stjepanTadic.txt

echo "" >> stjepanTadic.txt
echo "***  Architecture Name  ***" >> stjepanTadic.txt
echo "-----------------------------------------------------" >> stjepanTadic.txt
arch >> stjepanTadic.txt
echo "" >> stjepanTadic.txt

echo "" >> stjepanTadic.txt
echo "***  System Information  ***" >> stjepanTadic.txt
echo "-----------------------------------------------------" >> stjepanTadic.txt
uname -a >> stjepanTadic.txt
echo "" >> stjepanTadic.txt
