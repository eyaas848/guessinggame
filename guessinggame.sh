#!/usr/bin/env bash

count_files() {
    find . -maxdepth 1 -type f | wc -l
}

total_files=$(count_files)

echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory."

while true; do
    read -r -p "Your guess: " guess

    if [[ ! "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
    elif (( guess == total_files )); then
        echo "Congratulations! You guessed correctly!"
        break
    elif (( guess < total_files )); then
        echo "Your guess is too low. Try again."
    else
        echo "Your guess is too high. Try again."
    fi
done