#!/bin/bash

# ================================
# Security Check Script
# Created by: Abass
# ================================

echo ""
echo "================================"
echo "  SECURITY CHECK"
echo "================================"

# CHECK 1 - Open ports
echo ""
echo "CHECK 1: Open Ports..."
echo "--------------------------"
sudo netstat -tulpn

# CHECK 2 - Who is logged in
echo ""
echo "CHECK 2: Logged In Users..."
echo "--------------------------"
who

# CHECK 3 - Last logins
echo ""
echo "CHECK 3: Recent Logins..."
echo "--------------------------"
last -n 5

# CHECK 4 - File permissions on website
echo ""
echo "CHECK 4: Website Permissions..."
echo "--------------------------"
ls -la /var/www/html/

# CHECK 5 - Check NGINX status
echo ""
echo "CHECK 5: NGINX Status..."
echo "--------------------------"
sudo systemctl status nginx

# CHECK 6 - Failed login attempts
echo ""
echo "CHECK 6: Failed Logins..."
echo "--------------------------"
sudo grep "Failed" /var/log/auth.log | tail -5

echo ""
echo "================================"
echo "  SECURITY CHECK COMPLETE!"
echo "================================"
