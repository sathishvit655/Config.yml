#!/usr/bin/env bash

echo "Welcome to Guessing Game"

function askFromUser {
	echo -e "\nGuess the numbr of files in this directory : "
	read guess
	numberofFiles=$(ls -1 | wc -l)
}

askFromUser

while [[ $guess -ne $numberofFiles ]]; do
	if [[ $guess -lt $numberofFiles ]]; then
		echo -e "\nNo way... higher than that!"
	else
		echo -e "\nNope... below that!"
	fi
	askFromUser
done

echo -e " \nCongratulations! you guess right!"
echo -e " \n----------------------- \n" && ls -p | grep -v / | less
