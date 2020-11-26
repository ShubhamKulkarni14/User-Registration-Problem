#!/bin/bash -x

read -p "Enter First name :" fname

fnamePattern="^[A-Z]+[a-z]{2,}$"

if [[ $fname =~ $fnamePattern ]]
then
        echo "First Name is valid"
else
        echo "First Name is invalid"
fi
