#!/bin/bash

echo ""
echo "Display the current date and time"
echo "-----------------------------------------------------"
date | awk '{print $3, $2, $6, $4}'
echo ""

echo ""
echo "Print system's host name"
echo "-----------------------------------------------------"
hostname
echo ""

