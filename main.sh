#!/bin/bash

RED='\033[0;31m'

echo               "Travon Calculator"

read -p "Enter a number : " num_1

read -p "Enter second number : "  num_2


echo -e "      [1] Addition + \n      [2] Subtraction - \n      [3] Multiplication * \n      [4] Division /\n      [5] Expotention **\n      [x] Exit"

read -p  " CHOOSE YOUR OPERATOR : " choose

if [ $choose == 1 ] 
then
echo "The addition of $num_1 and $num_2 is $((num_1 + num_2))"
fi

if [ $choose == 2 ]
then
echo "The subtraction of $num_1 and $num_2 is $((num_1 - num_2))"
fi

if [ $choose == 3 ] 
then 
echo "The multiplication of $num_1 and $num_2 is $((num_1 * num_2))"
fi

if [ $choose == 4 ] 
then 
echo "The Division of $num_1 and $num_2 is $((num_1 / num_2))"
fi

if [ $choose == 5 ] 
then 
echo "The Expotention  of $num_1 and $num_2 is $((num_1 ** num_2))"
fi

if [ $choose  == "x" ]
then 
echo "Exiting the program..."
sleep 1
exit
fi

trap ctrl_c INT 
function ctrl_c() {
	echo -e"Ctrl+ C detected...\n Exiting..."
	sleep 1
	exit
}

#You can always improve this script by adding colors and more
