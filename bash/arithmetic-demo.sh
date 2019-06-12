#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

#Varaiables and data
#=======================
read -p "Tell me a number: " first
read -p "Tell me another number: " second


#arithmetic
#============
sum=$((first + second))
diff=$((first - second))
multi=$((first * second))
dividend=$((first / second))
modul=$((first % second))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $first/$second}")
power=$((first ** second))


#Report

cat <<EOF
$first plus $second is $sum
$first minus $second is $diff
$first multiplication $second is $multi
$first divided by $second is $dividend with a remainder of $modul
  - More precisely, it is $fpdividend
$first raised by $second is $power
EOF
