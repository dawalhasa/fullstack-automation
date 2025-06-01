#!/bin/bash

# Check if create-vue-app is installed
if ! command -v create-vue-app &> /dev/null
then
    echo "Vue application not found. Installing..."
    # Install create-vue-app globally
    npm install -g create-vue-app
    if [ $? -eq 0 ]; then
	echo "Vue application installed successfully."
    else
	echo "Vue application installation failed."
    fi
else
    echo "Vue application already exists."
fi
