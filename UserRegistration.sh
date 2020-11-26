#!/bin/bash -x

function getFirstName()
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

function getLastName()
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
	emailPattern="^[0-9a-zA-Z]+[._+-]{0,1}[0-9a-zA-Z]+[@][a-zA-Z]+[.][a-zA-Z]{2,3}([.][a-z]{2}){0,1}$"

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

function getPassword()
{
	read -p "choose Password :" password
	pattern="^[a-zA-Z0-9]"

	if [[ $password =~ $pattern ]]
	then
		if [[ ${#password} -ge 8 && "$password" == *[[:upper:]]* && "$password" == *[[:lower:]]* && "$password" == *[0-9]* && "$password" == *[@-#_+$]* ]]
		then
	        	echo test pass
		else
	        	echo test fail
		fi
	else
		echo test fail

	fi
}

echo -e "EMAIL VALIDATION LIST"

	echo -e	"\n  1. abc@yahoo.com"
	echo -e	"\n  2. abc-100@yahoo.com"
	echo -e	"\n  3. abc.100@yahoo.com"
	echo -e	"\n  4. abc111@abc.com"
	echo -e	"\n  5. abc-100@abc.net"
	echo -e	"\n  6. abc.100@abc.com.au"
	echo -e	"\n  7. abc@1.com"
	echo -e	"\n  8. abc@gmail.com.com"
	echo -e	"\n  9. abc+100@gmail.com"

	echo -e "ENTER YOUR CHOICE : \c"
	read ch1
		case $ch1 in
			1)
				email1="abc@yahoo.com"
				if ! [[ $email1 =~ $$emailPattern ]]
       				then
                			echo -e "INVALID EMAIL : $email1"
        			else
                			echo -e "VALID EMAIL : $email1"
        			fi
					;;
			2)
  				email2="abc-100@yahoo.com"
                                 if ! [[ $email2 =~ $$emailPattern ]]
                                  then
                                          echo -e "INVALID EMAIL : $email2"
                                  else
                                          echo -e "VALID EMAIL : $email2"
                                  fi
                                        ;;

			3)
				email3="abc.100@yahoo.com"
                                 if ! [[ $email3 =~ $emailPattern ]]
                                  then
                                          echo -e "INVALID EMAIL : $email3"
                                  else
                                          echo -e "VALID EMAIL : $email3"
                                  fi
                                        ;;
			4)
				email4="abc111@abc.com"
                                  if ! [[ $email4 =~ $emailPattern ]]
                                  then
                                      	   echo -e "INVALID EMAIL : $email4"
                                  else
                                           echo -e "VALID EMAIL : $email4"
                                  fi
                                        ;;
			5)
				email5="abc-100@abc.net"
                                   if ! [[ $email5 =~ $emailPattern ]]
                                   then
                                           echo -e "INVALID EMAIL : $email5"
                                   else
                                           echo -e "VALID EMAIL : $email5"
                                   fi
                                        ;;
			6)
				email6="abc.100@abc.com.au"
                                   if ! [[ $email6 =~ $emailPattern ]]
                                   then
                                          echo -e "INVALID EMAIL : $email6"
                                   else
                                          echo -e "VALID EMAIL : $email6"
                                   fi
                                        ;;
			7)
				email7="abc@1.com"
                                   if ! [[ $email7 =~ $emailPattern ]]
                                   then
                                          echo -e "INVALID EMAIL : $email7"
                                   else
                                          echo -e "VALID EMAIL : $email7"
                                   fi
                                        ;;
			8)
				email8="abc@gmail.com.com"
                                    if ! [[ $email8 =~ $emailPattern ]]
                                    then
                                           echo -e "INVALID EMAIL : $email8"
                                    else
                                           echo -e "VALID EMAIL : $email8"
                                    fi
                                        ;;
			9)
				email9="abc+100@gmail.com"
                                    if ! [[ $email9 =~ $emailPattern ]]
                                    then
                                           echo -e "INVALID EMAIL : $email9"
                                    else
                                           echo -e "VALID EMAIL : $email9"
                                    fi
                                        ;;

			*)
				echo -e "ENTER VALID CHOICE (1-9)"
					;;
		esac
fi


getFirstName
getLastName
getEmail
getMobileNumber
getPassword
