#!/bin/bash
#The value of pi
pi=3.141592653589793

#Input variable
radius=${1}

#To check that the given variable is not less or equal to 0
if [ ${radius} -le 0 ]
then
	echo -e "Error: You cannot count perimeter and area with 0 and lower given values"
	exit
fi

#The perimeter counting
perimeter=$(awk -v pi=$pi -v r=$radius 'BEGIN {print 2 * pi * r}')
echo -e "The perimeter of the circle:"$perimeter

#The area counting
area=$(awk -v pi=$pi -v r=$radius 'BEGIN {print pi * r * r}')
echo -e "The area of the circle:"$area

#Exit
exit
