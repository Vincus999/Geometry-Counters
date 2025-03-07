#!/bin/bash
#The input variable
side=${1}

#The checking of that the given value is a positive number
if [ ${side} -le 0 ]
then
	echo -e "Error: The given value should not be less or equal to 0"
	exit
fi

#The counting of the volume
volume=$(awk -v a=$side 'BEGIN {print (a^3)}')
echo -e "The volume of the cube:"$volume

#Exit
exit

