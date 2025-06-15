#!/bin/bash

echo "File Organizer by Zhameer"
echo "--------------------------"

read -p "Enter the folder you want to organize: " target

if [ ! -d "$target" ]; then
    echo "Folder does not exist."
    exit 1
fi

cd "$target"

mkdir -p Images Documents Scripts Others

for file in *; do
    if [[ -f "$file" ]]; then
        case "$file" in
            *.jpg|*.png|*.jpeg|*.gif)
                mv "$file" Images/
                ;;
            *.pdf|*.docx|*.txt)
                mv "$file" Documents/
                ;;
            *.sh|*.py|*.js|*.bat)
                mv "$file" Scripts/
                ;;
            *)
                mv "$file" Others/
                ;;
        esac
    fi
done

echo "Organizing complete."
