#!/bin/bash

echo "Starting after install process..."

# Navigate to application directory
cd /var/www/interior-designer

# Extract the deployment package if it exists
if [ -f "interior-designer-app.tar.gz" ]; then
    echo "Extracting deployment package..."
    tar -xzf interior-designer-app.tar.gz
    rm interior-designer-app.tar.gz
fi

# Set proper permissions
echo "Setting proper permissions..."
chown -R ubuntu:ubuntu /var/www/interior-designer
chmod -R 755 /var/www/interior-designer

# Install Node.js dependencies
echo "Installing Node.js dependencies..."
npm install --production

# Create PM2 ecosystem file
echo "Creating PM2 ecosystem file..."
cat > /var/www/interior-designer/ecosystem.config.js << EOF
module.exports = {
  apps: [{
    name: 'interior-designer',
    script: 'server.js',
    instances: 1,
    autorestart: true,
    watch: false,
    max_memory_restart: '1G',
    env: {
      NODE_ENV: 'production',
      PORT: 3000
    }
  }]
};
EOF

echo "After install completed successfully"
