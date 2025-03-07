#!/bin/bash
#The value of pi
pi=3.141592653589793

#The input variable
radius=${1}

#The checking of that the given value is a positive number
if [ ${radius} -le 0 ]
then
	echo -e "Error: The given value is less or equal to 0"
	exit
fi

#The counting of the volume
volume=$(awk -v r=$radius -v pi=$pi 'BEGIN {print (4 / 3) * pi * (r * r * r)}')
echo -e "The volume of the sphere:"$volume

#Exit
exit
