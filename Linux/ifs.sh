#!/bin/bash
num1=5
num2=5

if [ "string 1" != "string 1" ]
then
  echo "they are equal"
fi

if [ -d throwaway ] 
then
  # only occurs if conditon is true
    echo "directory already created"
else
# fires if conditon is false
mkdir throwaway
echo "created the directory"
fi
