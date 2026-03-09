#!/bin/bash

# ================================
# Maintenance Script
# Created by: Abass
# ================================

echo ""
echo "================================"
echo "  SERVER MAINTENANCE CHECK"
echo "  Date: $(date)"
echo "  User: $USER"
echo "================================"

# CHECK 1 - System info
echo ""
echo "CHECK 1: System Info..."
echo "--------------------------"
uname -a

# CHECK 2 - Disk space
echo ""
echo "CHECK 2: Disk Space..."
echo "--------------------------"
df -h

# CHECK 3 - Memory usage
echo ""
echo "CHECK 3: Memory Usage..."
echo "--------------------------"
free -h

# CHECK 4 - Running processes
echo ""
echo "CHECK 4: Top Processes..."
echo "--------------------------"
ps aux | head -10

# CHECK 5 - System uptime
echo ""
echo "CHECK 5: System Uptime..."
echo "--------------------------"
uptime

# CHECK 6 - Recent system logs
echo ""
echo "CHECK 6: Recent Logs..."
echo "--------------------------"
sudo journalctl -n 10 --no-pager

echo ""
echo "================================"
echo "  MAINTENANCE CHECK COMPLETE!"
echo "================================"
