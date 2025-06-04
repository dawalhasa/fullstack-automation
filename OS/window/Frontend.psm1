<#
.SYNOPSIS
FrontEnd
.DESCRIPTION
This is fullstack FrontEnd Application automation tool for Web-Developer
.EXAMPLE
Get-Frontend -Projectname myreact-app
.EXAMPLE
Get-Frontend 
cmdlet Get-Frontend at command pipeline position 1
Supply values for the following parameters:
Projectname:
#>
function Get-Frontend{
	[cmdletBinding()]
	param(
	[Parameter(Mandatory=$true)]
	[string]$Projectname="myreact-app"
	)
# Check if Node.js is already installed
if (Get-Command node -ErrorAction SilentlyContinue) {
    Write-Host "Node.js is already installed."
} else {
    Write-Host "Node.js is not installed. Installing now..."
    # Install Node.js using winget
    winget install OpenJS.NodeJS.LTS -e
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
    Write-Host "Installing React Application now..."
    # Install create-vite@latest react-app using npm
    npm create vite@latest $Projectname

    if ($?) {
        Write-Host "create-react-app installed successfully."
    } else {
        Write-Host "create-react-app installation failed."
    }
# Open localhost on port no 5173
function Get-Npmrun{
# Run npm instalation
Invoke-Expression "& npm install"
}
function Get-Devrun{
# npm run dev
Invoke-Expression "npm run dev &"
}
function Get-Reactstart{
	start microsoft-edge:http://localhost:5173
}
if ( -not ([string]::IsNullorEmpty($Projectname))){
Set-Location $Projectname && Get-Npmrun && Get-Devrun && Get-Reactstart
}
else{
	Write-Host "You have to run react Application manually"
}
}
}
