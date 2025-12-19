#!/bin/bash



read -p "Enter num:" num
read -p "Enter num1:" num1

if (( num1 > 100 ))
then 
	echo " num is 3 digit "
else
	echo "num is 2 digit"
fi

if  (( num %2 == 0 ))
then 
echo "num is even"
else
echo "num is odd"

fi
