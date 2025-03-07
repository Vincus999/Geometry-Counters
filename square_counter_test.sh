#!/bin/bash
#The input variable
side=${1}

#Checking that the input variable is not less and equal to 0
if [ ${side} -le 0 ]
then
	echo -e "Error: the perimeter and the area could not be counted. There is not perimeter and area existing with 0 or negative values"
	exit
fi

#The perimeter counting
perimeter=$(awk -v a=$side 'BEGIN {print 4 * a}')
echo -e "The perimeter of the square:"$perimeter

#The area counting
area=$(awk -v a=$side 'BEGIN {print a * a}')
echo -e "The area of the square:"$area

#Exit
exit
