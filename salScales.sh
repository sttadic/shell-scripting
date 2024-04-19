#!/bin/bash

echo ""
echo "********************************************"
echo "********** EMPLOYEE SALARY SCALES **********"
echo "********************************************"
echo ""
echo "Please enter the following details:"

# Read input from a user and perform input validation
# Do while user enters a valid input
while true; do
	read -p "  Starting Salary -> " salary
	# Using regular expressions - input must start with a character between 1 and 9, and is followed by zero or more numeric characters
	if [[ $salary =~ ^[1-9][0-9]*$ ]]; then
		break
	else 
		echo "--- Invalid input. Salary must be entered as a positive numeric value (no spaces or dots). Please try again ---"
	fi
done

read -p "  Number of Points -> " points
read -p "  Salary Increment -> " increment
read -p "  Is the Employee a Manager? (y/n) -> " isManager
