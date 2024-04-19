#!/bin/bash

echo ""
echo "********************************************"
echo "********** EMPLOYEE SALARY SCALES **********"
echo "********************************************"
echo ""
echo "Please enter the following details:"
echo ""

# Read input from a user and perform input validation
# Do while user enters a valid input
while true; do
	read -p "  Starting Salary -> " salary
	# Using regular expressions to check input - must start with a character between 1 and 9, and is followed by zero or more numeric characters
	if [[ $salary =~ ^[1-9][0-9]*$ ]]; then
		break
	else 
		echo ""
		echo "--- Invalid input! Salary must be a positive numeric value with no separators (Example: 10000) . Please try again ---"
	fi
done

echo ""

while true; do
	read -p "  Number of Points on Salary Scale -> " points
	# regex - input must start with a character between 1 and 9, and is followed by zero or one numeric character (max value allowed is 99)
	if [[ $points =~ ^[1-9][0-9]?$ ]]; then
		break
	else 
		echo ""
		echo "--- Invalid input! Number of points must be a positive numeric value less than 100 with no separators (Example: 10) . Please try again ---"
	fi
done

echo ""

while true; do
	read -p "  Salary Increment -> " increment
	if [[ $increment =~ ^[1-9][0-9]*$ ]]; then
		break
	else 
		echo ""
		echo "--- Invalid input! Salary increment must be a positive numeric value with no separators (Example: 1000) . Please try again ---"
	fi
done

echo ""

while true; do
	read -p "  Is the Employee a Manager? (y/n) -> " isManager
	if [ "$isManager" = "y" ]; then
		break
	elif [ "$isManager" = "n" ]; then
		break
	else
		echo ""
		echo "--- Invalid input! Please use y for yes or n for no ---"
	fi
done
