#!/bin/bash

echo "Hi, I'm Zhameer."
echo "Just testing Bash while I learn how this works."
echo "-------------------------------------------"

echo "Today is: $(date)"
echo "I'm in this folder: $(pwd)"

read -p "Type anything you want, and I’ll save it in a file: " user_input

mkdir -p test_folder
echo "$user_input" > test_folder/note.txt

echo "Alright, saved that to test_folder/note.txt"
echo "Here's what's inside the folder:"
ls test_folder

echo "-------------------------------------------"
echo "Done! Nothing fancy, just practicing."
