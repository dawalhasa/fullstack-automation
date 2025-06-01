#!/bin/bash

# Check if create-react-app is installed
if ! command -v create-react-app &> /dev/null
then
    echo "React application not found. Installing..."
    # Install create-react-app globally
    npm install -g create-react-app
    if [ $? -eq 0 ]; then
	echo "React application installed successfully."
    else
	echo "React application installation failed."
    fi
else
    echo "React application already exists."
fi
