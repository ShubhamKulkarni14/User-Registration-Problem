#!/bin/bash -x

function firstName()
{
	read -p "Enter First name :" fname

	fnamePattern="^[A-Z][a-zA-Z]{2,}$"

	if [[ $fname =~ $fnamePattern ]]
	then
        	echo "First Name is valid"
	else
        	echo "First Name is invalid"
	fi

}

function lastName()
{
	read -p "Enter Last name :" lname

	lnamePattern="^[A-Z][a-zA-Z]{2,}$"

	if [[ $lname =~ $lnamePattern ]]
	then
        	echo "last Name is valid"
	else
	        echo "last Name is invalid"
	fi

}


firstName
lastName
