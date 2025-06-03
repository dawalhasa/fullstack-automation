---
title: Bash Authomation Project
sub_title: June 1st 2025
author: Dawalhasa
---

Full Stack Automation
======================

<!-- new_lines: 5 -->

<!-- pause -->

# OS Level

## Bash Scripting:
```bash
OS='Linux,Mac,Window'
```

<!-- end_slide -->

Front End Bash Scripting
========================

<!-- new_lines: 5 -->

<!-- pause -->

## Install React on MacOS
<!-- pause -->

<!-- new_lines: 5 -->


```bash
if ! command -v nodejs &>/dev/null
then
    brew install nodejs
else
    echo "nodejs installed already"
fi
```

<!-- end_slide -->


<!-- new_lines: 5 -->


## Install React on Linux

<!-- new_lines: 5 -->

<!-- pause -->

```bash
if ! command -v nodejs &>/dev/null
then
    apt install nodejs
else
    echo "nodejs installed already"
fi
```
<!-- end_slide -->

<!-- new_lines: 2 -->

## Install React on Window
<!-- new_line -->


<!-- pause -->

```bash
  # Check if Node.js is already installed                                     
  if ($env:OS -like "*Windows*" && Get-Command node -ErrorAction              
  SilentlyContinue) {                                                         
      Write-Host "Node.js is already installed."                              
  } else {                                                                    
      Write-Host "Node.js is not installed. Installing now..."                
      # Install Node.js using winget                                          
      winget install OpenJS.NodeJS -e                                         
      if ($?) {                                                               
          Write-Host "Node.js installed successfully."                        
      } else {                                                                
          Write-Host "Node.js installation failed."                           
      }                                                                       
  }                                                                           
                                                                              
  # Check if create-react-app is already installed                            
  if (Get-Command create-react-app -ErrorAction SilentlyContinue) {           
      Write-Host "create-react-app is already installed."                     
  } else {                                                                    
      Write-Host "create-react-app is not installed. Installing now..."       
      # Install create-vite@latest react-app using npm                        
      npm create vite@latest my-react-project                                 
                                                                              
      if ($?) {                                                               
          Write-Host "create-react-app installed successfully."               
      } else {                                                                
          Write-Host "create-react-app installation failed."                  
      }                                                                       
  }                                                                         
```
