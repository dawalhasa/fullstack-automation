#!/bin/bash

OS=$(uname -s)
Distro=$(uname -n)
echo 'Provite your vite-Project Name:'


read name

# install react on linux distro
if [[ "$OS" == "Linux" && "$Distro" == "Ubuntu" ]]; then
  sudo apt update
  sudo apt install -y nodejs npm
  npm create vite@latest $name
  echo "React installed via apt on Ubuntu."
elif [[ "$OS" == "Linux" && "$Distro" == "Archi" ]]; then
  sudo pacman update
  sudo pacman install -y nodejs npm
  npm create vite@latest $name
  echo "React installed via apt on Archi Linux."
elif [[ "$OS" == "Linux" && "$Distro" == "CentOS" ]]; then
   sudo yum update
   sudo yum install -y nodejs npm
   npm install -g create-react-app
   echo "React installed via apt on CentOS."
else
	echo "Your OS don't support react installation"
fi
