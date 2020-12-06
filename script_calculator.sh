#!/bin/bash
#bash script calculator

input="yes"
while [[ $input = "yes" ]]

do 
  
	PS3="Press 1 for Addition, 2 for subtraction, 3 for multiplication, 4 for division, 5 for exiting the script: "
	select math in Addition Subtraction Multiplication Division Exit
	do
		case "$math" in
		Addition)
			echo "Enter first no:"
			read num1
			echo "Enter second no:"
			read num2
			result=`expr $num1 + $num2`
			echo Answer: $result
			break
		;;
		Subtraction)
			echo "Enter first no:"
			read num1
			echo "Enter second no:"
			read num2
			result=`expr $num1 - $num2`
			echo Answer: $result
			break
		;;
		Multiplication)
			echo "Enter first no:"
			read num1
			echo "Enter second no:"
			read num2
			result=`expr $num1 * $num2`
			echo Answer: $result
			break
		;;
		Division)
			echo "Enter first no:"
			read num1
			echo "Enter second no:"
			read num2
			result=$(expr "scale=2; $num1/$num2" | bc)
			echo Answer = $result
			break
		;;
		Exit)
			exit
			break
		;;
		*)
			echo Choose 1 to 5 only!!!!
			break
			;;
	esac
	done
 done

