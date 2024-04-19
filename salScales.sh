#!/bin/bash

echo ""
echo "********************************************"
echo "********** EMPLOYEE SALARY SCALES **********"
echo "********************************************"
echo ""
echo "Please enter the following details:"
echo ""

# Read input from a user and perform input validation
# Do until user enters a valid input
while true; do
	read -p "  Starting Salary -> " SALARY
	# Using regular expressions to check input - must start with a character between 1 and 9, and is followed by zero or more numeric characters
	if [[ $SALARY =~ ^[1-9][0-9]*$ ]]; then
		break
	else 
		echo ""
		echo "--- Invalid input! Salary must be a positive numeric value with no separators (Example: 10000) . Please try again ---"
	fi
done

echo ""

while true; do
	read -p "  Number of Points on a Salary Scale -> " POINTS
	# regex - input must start with a character between 1 and 9, and is followed by zero or one numeric character (max value allowed is 99)
	if [[ $POINTS =~ ^[1-9][0-9]?$ ]]; then
		break
	else 
		echo ""
		echo "--- Invalid input! Number of points must be a positive numeric value less than 100 with no separators (Example: 10) . Please try again ---"
	fi
done

echo ""

while true; do
	read -p "  Salary Increment -> " INCREMENT
	if [[ $INCREMENT =~ ^[1-9][0-9]*$ ]]; then
		break
	else 
		echo ""
		echo "--- Invalid input! Salary increment must be a positive numeric value with no separators (Example: 1000) . Please try again ---"
	fi
done

echo ""

while true; do
	read -p "  Is the Employee a Manager? (y/n) -> " MANAGER
	if [ "$MANAGER" = "y" ]; then
		break
	elif [ "$MANAGER" = "n" ]; then
		break
	else
		echo ""
		echo "--- Invalid input! Please use y for yes or n for no ---"
	fi
done

echo ""
echo "********** SALARY SCALES TABLE **********"
echo ""

# Get the current time in the format yyyy-mm-dd
TIME=$(date +%Y-%m-%d)

if [ "$MANAGER" = "n" ]; then
echo -e " YEAR \tSALARY SCALE"
echo "======================="
	# Iterate points number of times
	for ((i = 1; i <= POINTS; i++)); do
		((SALARY += INCREMENT))
		n=$((i*12))
		echo "$(date -d "$TIME+$n month" +%B\ %Y)   $SALARY "			 
       done
fi       

