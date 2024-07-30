#!/bin/bash

if [ -d "$DIR" ]; then
    echo "The 'all_turtles' directory already exists so there is nothing to do."
else
    echo "Creating directory 'all_turtles'"
    mkdir all_turtles
    cd all_turtles
    echo "Downloading images..."
    grep -o 'https://www.gstatic.com/android/keyboard/emojikitchen/[^"]*' ../file.html | xargs -n 1 curl -O 2> /dev/null
    echo "Done!"
fi

