#!/bin/bash

Addition() {
    local n1=$1
    local n2=$2
  
  echo "Sum of $n1 and $n2 is $((n1 +n2))"

}
Subtraction() {
    local n1=$1
    local n2=$2
    echo "Difference of $n1 and $n2 is $(( n1 -n2 ))"
}
Multiplication() {
    local n1=$1
    local n2=$2
    echo "Product of $n1 and $n2 is $(( n1 * n2 ))"

}

Division () {
    local n1=$1
    local n2=$2
    echo "Result of $n1 divided by $n2 is $(( n1 / n2))"

    if [ $n2 -eq 0 ]; then

    echo "Error: division by zero is not allowed"
    fi
}

echo "Which arithmetic operation do you want to perform?"
echo "1; Addition, 2; Subtraction, 3; Multiplication, 4; Division"
read -p "Enter choice: " choice
read -p "Enter both numbers seperated by space: " num1 num2

case $choice in
1) Addition $num1 $num2 ;;
2) Subtraction $num1 $num2;;
3) Multiplication $num1 $num2 ;;
4) Division $num1 $num2 ;;
esac
