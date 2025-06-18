#!/bin/bash

echo "Stopping application..."

# Stop the application using PM2
if pm2 list | grep -q "interior-designer"; then
    echo "Stopping interior-designer application..."
    pm2 stop interior-designer
    pm2 delete interior-designer
else
    echo "Application not running in PM2, checking for direct Node.js processes..."
    if pgrep -f "node server.js" > /dev/null; then
        echo "Stopping Node.js processes..."
        pkill -f "node server.js"
        sleep 3
    fi
fi

echo "Application stopped successfully"
