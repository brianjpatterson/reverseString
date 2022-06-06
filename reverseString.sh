#!/bin/bash

declare str=$1

reverseString() {

	local str=$1
	local rev
	if [ $# -eq 1 ]; then
		rev=""
	else
		rev=$2
	fi

	rev+=${str: -1}
	str=${str%?}
	if [ ${#str} -eq 0 ]; then
		echo "$rev"
		return 0
	fi
	reverseString "$str" "$rev"

}

reverseString "$str"
