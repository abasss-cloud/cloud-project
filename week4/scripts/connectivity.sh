#!/bin/bash

# ================================
# Connectivity Check Script
# Created by: Abass
# ================================

echo ""
echo "================================"
echo "  CONNECTIVITY CHECK"
echo "================================"

# CHECK 1 - Local machine
echo ""
echo "CHECK 1: Local Machine..."
echo "--------------------------"
ping -c 2 localhost

# CHECK 2 - Internet connectivity
echo ""
echo "CHECK 2: Internet..."
echo "--------------------------"
ping -c 2 google.com

# CHECK 3 - Direct IP
echo ""
echo "CHECK 3: Direct IP..."
echo "--------------------------"
ping -c 2 8.8.8.8

# CHECK 4 - DNS check
echo ""
echo "CHECK 4: DNS Check..."
echo "--------------------------"
nslookup google.com

# CHECK 5 - Trace route
echo ""
echo "CHECK 5: Traceroute..."
echo "--------------------------"
traceroute -m 5 google.com

# CHECK 6 - Website responding
echo ""
echo "CHECK 6: Website Check..."
echo "--------------------------"
curl -I http://localhost

echo ""
echo "================================"
echo "  CONNECTIVITY CHECK COMPLETE!"
echo "================================"
