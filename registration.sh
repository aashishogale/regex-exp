#! /bin/bash

read -p "Enter first name" fname
fnamepat="^[A-Z][a-z][a-z]+$";
if [[ $fname =~ $fnamepat   ]]
then
  echo "Valid first name";
else
  echo "Invalid first name";
fi


read -p "Enter Last name" lname
lnamepat="^[A-Z][a-z][a-z]+$";
if [[ $lname =~ $lnamepat   ]]
then
  echo "Valid last name";
else
  echo "Invalid last name";
fi

read -p "Enter Email id" email
emailpat="^abc([\.-]?)[a-z0-9]*@[a-z]+\.[a-z]+(\.[a-z])*$";
if [[ $email =~ $emailpat   ]]
then
  echo "Valid email address";
else
  echo "Invalid email address";
fi



read -p "Enter Mobile number" mob
mobpat="^[0-9]{2}[[:space:]][0-9]{10}$";
if [[ $mob =~ $mobpat   ]]
then
  echo "Valid mobile number";
else
  echo "Invalid mobile number";
fi


read -p "Enter password" pass
passpat1="^([a-zA-Z0-9@#!]){8}$";
passpat2="^([a-z0-9@#!]*)[A-Z]+([a-z0-9@#!]*)$";
passpat3="^[a-zA-Z@#!]*[0-9]+[a-zA-Z@#!]*$";
passpat4="^([a-zA-Z0-9]*)[^a-zA-Z_0-9\s]([a-zA-Z0-9]*)$";
if [[ $pass =~ $passpat1   ]]
then
  if [[ $pass =~ $passpat2  ]]
  then
     if [[ $pass =~ $passpat3  ]]
     then
       if [[ $pass =~ $passpat4  ]]
       then
        echo "Perfect password"
       else
         echo "Please enter at least one special char";
        fi

     else
       echo "Please enter at least one digit";
     fi

  else
    echo "Please enter at least one caps letter";
  fi
else
  echo "Your password should be of 8 length";
fi

