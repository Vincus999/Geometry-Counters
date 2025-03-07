#!/bin/bash
#The input variables
side_a=${1}
side_b=${2}

#To check that the given value is not less or equal to 0
if [[ ${side_a} -le 0 ]] || [[ ${side_b} -le 0 ]]
then
	echo -e "Error: One of the given values is less or equal to 0 and this counter cannot work with 0 or negative values"
	exit
fi

#The perimeter counting
perimeter=$(awk -v a=$side_a -v b=$side_b 'BEGIN {print (2 * a) + (2 * b)}')
echo -e "The perimeter of the teglalap:"$perimeter

#The area counting
area=$(awk -v a=$side_a -v b=$side_b 'BEGIN {print a * b}')
echo -e "The area of the teglalap:"$area

#Exit
exit
