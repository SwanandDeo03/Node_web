#!/bin/bash

# Stop any existing application
echo "Stopping existing application..."
if pgrep -f "node server.js" > /dev/null; then
    pkill -f "node server.js"
    sleep 5
fi

# Create application directory if it doesn't exist
echo "Creating application directory..."
mkdir -p /var/www/interior-designer

# Clean up old deployment files
echo "Cleaning up old deployment files..."
rm -rf /var/www/interior-designer/*

# Ensure Node.js is installed
echo "Checking Node.js installation..."
if ! command -v node &> /dev/null; then
    echo "Node.js not found. Installing Node.js..."
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    apt-get install -y nodejs
fi

# Install PM2 globally for process management
echo "Installing PM2..."
npm install -g pm2

echo "Before install completed successfully"