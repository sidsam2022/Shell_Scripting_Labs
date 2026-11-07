#!/bin/bash

echo "Please enter the marks obtained"
read marks

if [ $marks -lt 35 ]; then
	echo "Fail"
elif [ $marks -lt 50 ]; then
	echo "third class"
elif [ $marks -lt 60 ]; then
        echo "second class"
elif [ $marks -lt 80 ]; then
        echo "first class"
else
        echo "distinction"
fi
