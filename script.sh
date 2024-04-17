#!/bin/bash

echo "" >> stjepanTadic.txt
echo "Display the current date and time" >> stjepanTadic.txt
echo "-----------------------------------------------------" >> stjepanTadic.txt
date | awk '{print $3, $2, $6, $4}' >> stjepanTadic.txt
echo "" >> stjepanTadic.txt

echo "" >> stjepanTadic.txt
echo "Print system's host name" >> stjepanTadic.txt
echo "-----------------------------------------------------" >> stjepanTadic.txt 
hostname >> stjepanTadic.txt
echo "" >> stjepanTadic.txt

