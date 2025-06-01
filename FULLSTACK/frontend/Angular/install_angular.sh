#!/bin/bash

# Check if create-angular-app is installed
if ! command -v create-angular-app &> /dev/null
then
    echo "Angular application not found. Installing..."
    # Install create-angular-app globally
    npm install -g create-angular-app
    if [ $? -eq 0 ]; then
	echo "Angular application installed successfully."
    else
	echo "Angular application installation failed."
    fi
else
    echo "Angular application already exists."
fi
