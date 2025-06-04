#!/bin/bash


OS=$(uname -s)                                                              

if [[ "$OS" == "Linux" ]]; then                    
# install react on Linux
source /Users/dawalhasa/bash_script/OS/linux/linux_os.sh

elif [[ "$OS" == "drawin" ]]; then                  
# insatll react on mac OS
source /Users/dawalhasa/bash_script/OS/mac/mac_os.sh

else
# install react on window OS
source /Users/dawalhasa/bash_script/OS/window/window_os.sh
fi
