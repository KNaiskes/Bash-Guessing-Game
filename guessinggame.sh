#!/usr/bin/env bash

number_of_files=$(ls | wc -l)

function wrong_guess() {
    echo "Wrong guess"

    if [[ $1 -gt number_of_files ]]
    then
	echo "Your guess is high"
    elif [[ $1 -lt number_of_files ]]
    then
	echo "Your guess is low"
    fi

    echo "Make a new guess: "
    read user_guess
}

echo "How many files are in the current directory ? Make a guess: "
read user_guess

while [ $user_guess -ne $number_of_files ]
do
    wrong_guess user_guess
done

echo "Congrats! Your guess is correct"
