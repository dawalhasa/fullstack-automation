#!/bin/bash



# install home brew 
if ! command -v brew &>/dev/null
then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	echo "brew is already installed"
fi
