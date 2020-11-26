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

function getEmail()
{

	read -p "Enter Email address :" email
	email="^[0-9a-zA-Z]+[._+-]{0,1}[0-9a-zA-Z]+[@][0-9a-zA-Z]+[.][a-zA-Z]{2,3}([.][a-z]{2}){0,1}$"

	if [[ $email =~ $emailPattern ]]
	then
        	echo "valid email"
	else
        	echo "Invalid email"
	fi
}

function getMobileNumber()
{

	read -p "Enter Mobile number :" number

	numberPattern="^[0-9]{2,3}[[:space:]][0-9]{10}$"

	if [[ $number =~ $numberPattern ]]
	then
        	echo "valid Number"
	else
        	echo "Invalid Number"
	fi
}

getfirstName
getlastName
getEmail
getMobileNumber
