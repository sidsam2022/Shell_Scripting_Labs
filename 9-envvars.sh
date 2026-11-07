#!/bin/bash

var1=Mani
var2=10
var3=Kumar
var4=47

Total=$var1+$var2
echo "$Total" 

Sum=$var1+$var3
echo $Sum

echo "$var4-$var2"
echo "$(($var4-$var2))"

echo "================================================================"
declare -i COUNT=10 # I am declaring as integer

COUNT=COUNT+5

echo "Count is: $COUNT"

echo "================================================================"

Vegetables=("Beerakaya", "Bendakaya", "Sorakaya") # Array declaration

echo "Vegetables: ${Vegetables[@]}"

echo "Available Vegetable in Swiggy: ${Vegetables[0]}"

echo "================================================================"

