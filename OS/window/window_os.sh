# Check if Node.js is already installed
if ($env:OS -like "*Windows*" && Get-Command node -ErrorAction SilentlyContinue) {
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
