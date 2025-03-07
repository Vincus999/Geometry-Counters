#!/bin/bash
#The value of the pi
pi=3.141592653589793

#The input variables
radius=${1}
height=${2}

#The checking of the given values positivity
if [[ ${radius} -le 0 ]] || [[ ${height} -le 0 ]]
then
	echo -e "Error: One of the given values are less or equal to 0"
	exit
fi

#The counting of the volume
volume=$(awk -v pi=$pi -v r=$radius -v h=$height 'BEGIN {print (1 / 3) * pi * (r^2) * h}')
echo -e "The volume of the cupe:"$volume

#Exit
exit
