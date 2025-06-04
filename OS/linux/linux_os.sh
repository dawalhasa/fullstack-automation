#!/bin/bash

Distro=$(uname -n)

read name

# install react on linux distro
if [[ "$Distro" == "Ubuntu" ]]; then
  # update operating system using sudo
  sudo apt update
  # install nodejs first
  sudo apt install -y nodejs npm
  # now install react using vite@latest
  npm create vite@latest $name
  echo "React installed via apt on Ubuntu."
elif [[ "$Distro" == "Archi" ]]; then
  # update operating system using sudo
  sudo pacman update
  # install nodejs first
  sudo pacman install -y nodejs npm
  # now install react using vite@latest
  npm create vite@latest $name

  echo "React installed via apt on Archi Linux."
elif [[ "$Distro" == "CentOS" ]]; then
  # update operating system using sudo
  sudo yum update
  # install nodejs first
  sudo yum install -y nodejs npm
  # now install react using vite@latest
  npm install -g create-react-app
   echo "React installed via apt on CentOS."
else
	echo "Your OS don't support react installation"
fi
