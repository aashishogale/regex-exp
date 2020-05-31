#!/bin/bash
echo "---------Welcome to User Registration-----------"

function validateFirstName(){
	namepattern="^[A-Z]([a-z]{2}+)+$"
	if [[ $1 =~ $namepattern   ]]
	then
	  echo "Valid Name"
	else
	  echo "Invalid Name"
	fi
}

function validateEmail(){
	emailpattern="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b"
	if [[ $1 =~ $emailpattern ]]
	then
	  echo "Valid email address"
	else
	  echo "Invalid email address"
	fi
}

function validateMobile(){
	read -p "Mobile : " mobile
	mobpattern="^[0-9]{2}[[:space:]][0-9]{10}$"
	if [[ $mobile =~ $mobpattern ]]
	then
	  echo "Valid mobile number"
	else
	  echo "Invalid mobile number"
	fi
}

function validatePassword(){
	passpattern1="^([a-zA-Z0-9@#!]){8,}$"
	passpattern2="^([a-z0-9@#!]*)[A-Z]+([a-z0-9@#!]*)$"
	passpattern3="^[a-zA-Z@#!]*[0-9]+[a-zA-Z@#!]*$"
	passpattern4="^([a-zA-Z0-9]*)[^a-zA-Z_0-9\s]([a-zA-Z0-9]*)$"
	if [[ $1 =~ $passpattern1 ]]
	then
	  if [[ $1 =~ $passpattern2 ]]
	  then
	     if [[ $1 =~ $passpattern3 ]]
	     then
	       if [[ $1 =~ $passpattern4 ]]
	       then
		echo "Success : Valid Password"
	       else
		 echo "Error : At least one special character required"
		fi
	     else
	       echo "Error : At least one digit mandatory"
	     fi
	  else
	    echo "Error : At least one caps letter required"
	  fi
	else
	  echo "Error : Password must be of 8 length"
	fi
}

read -p "First Name : " fname
validateFirstName $fname

read -p "Last Name : " lname
validateFirstName $lname

read -p "Email : " email
validateEmail $email

validateMobile

read -p "Password : " password
validatePassword $password


echo "----------------------------------"
<<SampleEmail
-------Valid Emails----------
abc@yahoo.com,
abc-100@yahoo.com,
abc.100@yahoo.com
abc111@abc.com,
abc-100@abc.net,
abc.100@abc.com.au
abc@1.com,
abc@gmail.com.com
abc+100@gmail.com

------Invalid Emails (TLD - Top Level Domains)--------------
abc – must contains “@” symbol
abc@.com.my – tld can not start with dot “.”
abc123@gmail.a – “.a” is not a valid tld, last tld must contains at least two characters
abc123@.com – tld can not start with dot “.”
abc123@.com.com – tld can not start with dot “.”
.abc@abc.com – email’s 1st character can not start with “.”
abc()*@gmail.com – email’s is only allow character, digit, underscore and dash
abc@%*.com – email’s tld is only allow character and digit
abc..2002@gmail.com – double dots “.” are not allow
abc.@gmail.com – email’s last character can not end with dot “.”
abc@abc@gmail.com – double “@” is not allow
abc@gmail.com.1a -email’s tld which has two characters can not contains digit
abc@gmail.com.aa.au - cannont have multiple email’s tld
SampleEmail
