#!/bin/bash

echo "Starting application..."

# Navigate to application directory
cd /var/www/interior-designer

# Start the application using PM2
echo "Starting application with PM2..."
pm2 start ecosystem.config.js

# Save PM2 configuration
pm2 save

# Setup PM2 to start on system boot
pm2 startup

echo "Application started successfully"
echo "Application is running on port 3000"
