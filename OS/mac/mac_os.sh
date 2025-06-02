
                                                                                  
    #!/bin/bash                                                                   
                                                                                  
    OS=$(uname -s)                                                                
                                                                                  
                                                                                  
    # insatll react on mac OS                                                     
    if [[ "$OS" == "Darwin" ]]                                                    
    then                                                                          
    	# install brew on mac                                                         
  	source ./brew_installation.sh                                                   
    else                                                                          
  	echo "brew is already installed"                                                
                                                                                  
    	wait                                                                          
    fi                                                                            
                                                                                  
    	# install nodejs on mac                                                       
    if ! commond -v nodejs &>/dev/null                                            
    then                                                                          
  source ~/fullstack/full-stack/fullstack-automation/install_nodejs.sh            
          echo "Nodejs installed successfully"                                    
    else                                                                          
        echo "Nodejs already installed"                                           
        read name                                                                 
    fi                                                                            
    if ! command -v reactjs &>/dev/null                                           
    then                                                                          
    # node package manager install react                                          
    # provide your react directory a name                                         
        npm create vite@latest $name -y                                           
        echo "React installed via npm on macOS."                                  
    else                                                                          
    	echo "Unable to install react"                                                
    fi                                                                            

