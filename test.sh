#!/bin/bash
total=10
if [ $# -lt 2 ]
	then
	echo "this"
	exit 1
fi
for var1 in $2 $1
do 
echo $var1
done
echo $2 | egrep "^[0-9][0-9]*$" > /dev/null
if [ $? -eq 0 ]
	then
	echo "up"
	total=$((total + $2 ))
echo $total
exit 2
else
	echo "down"
exit 3
fi
