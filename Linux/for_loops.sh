#!/bin/bash

states=(montana utah idaho colorado alaska)

for state in ${states[@]}

   do
	if [  $state == "hawaii" ]

	then

	echo "hawaii is the best"
	else
	echo "im not fond of hawaii"

	fi
done
