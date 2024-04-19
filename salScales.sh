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
echo ""
echo "**** SALARY SCALE TABLE ****"
echo "|**************************|"
echo "|                          |"

# Get the current time in the format yyyy-mm-dd
DATE=$(date +%Y-%m-%d)

echo -e "|    DATE \t  SALARY   |"
echo "============================"
# Iterate points number of times
for ((i = 1; i <= POINTS; i++)); do
	# Increase the salary by the amount of increment
	((SALARY += INCREMENT))
	# Regular employee gets salary increment once in a twelwe months, managers once in a six months
	if [ "$MANAGER" = "n" ]; then
		MONTHS_TO_INC=$((i*12))
	else
		MONTHS_TO_INC=$((i*6))
	fi

	# Calculate date of next increment and store in the format month yyyy; e.g. Jan 2025
	NEXT_DATE=$(date -d "$TIME+$MONTHS_TO_INC month" +%b\ %Y)

	echo -e "  $NEXT_DATE   |    $SALARY"
	echo "----------------------------"	
    	 
done

