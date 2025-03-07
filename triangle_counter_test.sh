#!/bin/bash
#The input variables
side_a=${1}
side_b=${2}
side_c=${3}

#To check that the given values are all positive numbers
if [[ ${side_a} -le 0 ]] || [[ ${side_b} -le 0 ]] || [[ ${side_c} -le 0 ]]
then
	echo -e "Error: One of the given values is less or equal to 0"
	exit
fi

#The perimeter counting
perimeter=$(awk -v a=$side_a -v b=$side_b -v c=$side_c 'BEGIN {print a + b + c}')
echo -e "The area of the triangle:"$perimeter

#The area counting
area=$(awk -v a=$side_a -v b=$side_b -v c=$side_c -v s=$perimeter 'BEGIN {print sqrt((s / 2) * ((s / 2) - a) * ((s / 2) - b) * ((s / 2) - c))}')
echo -e "The area of the triangle:"$area

#Exit
exit

