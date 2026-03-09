#!/bin/bash

# ================================
# Website Deployment Script
# Created by: Abass
# ================================

echo ""
echo "================================"
echo "  DEPLOYING WEBSITE..."
echo "================================"

# STEP 1 - Update system
echo ""
echo "STEP 1: Updating system..."
echo "--------------------------"
sudo apt update -y

# STEP 2 - Install NGINX
echo ""
echo "STEP 2: Installing NGINX..."
echo "--------------------------"
sudo apt install nginx -y

# STEP 3 - Start NGINX
echo ""
echo "STEP 3: Starting NGINX..."
echo "--------------------------"
sudo systemctl start nginx
sudo systemctl enable nginx

# STEP 4 - Create website folder
echo ""
echo "STEP 4: Creating website..."
echo "--------------------------"
sudo mkdir -p /var/www/html

# STEP 5 - Create website HTML
echo ""
echo "STEP 5: Building webpage..."
echo "--------------------------"
sudo bash -c 'cat > /var/www/html/index.html << EOF
<!DOCTYPE html>
<html>
<head>
    <title>Abass Cloud Server</title>
    <style>
        body {
            background-color: #1a1a2e;
            color: #00ff88;
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
        }
        h1 { font-size: 3em; }
        .info {
            background-color: #16213e;
            padding: 20px;
            border-radius: 10px;
            margin: 20px auto;
            width: 50%;
        }
        .status { color: #00ff88; }
    </style>
</head>
<body>
    <h1>Abass Cloud Server</h1>
    <p>Welcome to my first deployed website!</p>
    <div class="info">
        <h2>Server Status</h2>
        <p class="status">NGINX Running</p>
        <p class="status">Port 80 Open</p>
        <p class="status">Website Deployed</p>
    </div>
    <div class="info">
        <h2>Tech Stack</h2>
        <p>Linux Ubuntu WSL2</p>
        <p>NGINX Web Server</p>
        <p>Cloud Engineering Journey</p>
    </div>
    <p>Built by Abass</p>
</body>
</html>
EOF'

# STEP 6 - Set permissions
echo ""
echo "STEP 6: Setting permissions..."
echo "--------------------------"
sudo chmod 755 /var/www/html/index.html
sudo chown www-data:www-data /var/www/html/index.html

# STEP 7 - Restart NGINX
echo ""
echo "STEP 7: Restarting NGINX..."
echo "--------------------------"
sudo systemctl restart nginx

# STEP 8 - Verify deployment
echo ""
echo "STEP 8: Verifying deployment..."
echo "--------------------------"
curl -I http://localhost

echo ""
echo "================================"
echo "  WEBSITE DEPLOYED! ✅"
echo "  Visit: http://localhost"
echo "================================"
