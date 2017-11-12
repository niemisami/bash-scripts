#!/usr/bin/env bash

set -e

echo Playground scripts 

ARRAY=('java', 'python', 'C', 'elm');

# Print whole array
echo ${ARRAY[@]}

# User input 

if [[ $1 = -p ]]; then
	read -p "What your name: " ANSWER
	echo "Your name is: $ANSWER"
fi

# Calculate script parameters
echo $#

# List folder files
echo $PWD
for SCRIPT in $PWD/*
do
if [ -f $SCRIPT ] 
then 
echo $SCRIPT
fi 
done



if (( $? )) ; then echo failed ; else echo OK; fi
