#!/bin/bash

OS=$(uname -s)

# install brew on mac
if ! commond -v brew &>dev/null 
then
	source ./brew_installation.sh

	echo "brew is installing..."

	--wait 10s
else
	echo "Home Brew already installed"
fi

# insatll react on mac OS
if [[ "$OS" == "Darwin" ]]; then
  if command -v brew &> /dev/null; then
    brew install node
    # node package manager install react
    npm install -g create-react-app
    echo "React installed via brew on macOS."
  else
    echo "brew not found. Please install brew first."
  fi
else
	echo "Unable to install react"
fi
