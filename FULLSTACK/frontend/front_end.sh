#!/bin/bash

# Create front-end dictory
read name 

if [ ! -d "$name" ]; then
  # Directory does not exist, create it
  mkdir -p "$name"
  echo "Directory '$name' created."
else
  # Directory exists
  echo "Directory '$name' already exists."
fi

cd "$name"

if ! command -v nodejs &>/dev/null
then
	source /Users/dawalhasa/fullStack/bash_script/install_nodejs.sh
elif ! command -v react &>/dev/null
	source /Users/dawalhasa/fullStack/bash_script/frontend/React/install_react.sh
else
	echo "Your current path:"
	pwd

	cd ../
	echo "Your changed path:" 
	pwd
fi
