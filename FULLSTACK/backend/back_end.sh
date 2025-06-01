#!/bin/bash


source ../install_nodejs.sh

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

source ./install_express.sh
touch index.js

echo "Your current path:"
pwd

cd ../
echo "Your changed path:" 
pwd
