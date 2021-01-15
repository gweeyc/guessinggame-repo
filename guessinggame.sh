#!/bin/bash
# The guessinggame program returns the number of files in current directory
# Copyright 2020 Alvin Gwee

lines=$(find . -maxdepth 1 -type f | wc -l)

user_prompt () {
 echo "Enter your guess of the number of files in current directory: "
 read n
}

input_check () {
  while ! [[ "$n" =~ ^[0-9]+$ ]]
  do 
   echo "Please enter a valid number (integers): "
   read n
  done
}

user_prompt
input_check

while [[ n -ne lines ]]
do
  if [[ n -gt lines ]]
   then echo "Your guess is too high, try another guess!"
  elif [[ n -lt lines ]]
   then echo "Your guess is too low, try another guess!"
  fi
    user_prompt
    input_check
done
 
echo "Congratulations! You have guessed correctly!"
