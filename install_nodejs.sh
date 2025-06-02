#!/bin/bash



if ! command -v nodejs &>/dev/null 
then
	brew install node
else
       echo "Node Js already installed"	

fi
