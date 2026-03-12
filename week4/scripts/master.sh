#!/bin/bash

# ================================
# MASTER SCRIPT
# Runs ALL scripts
# Created by: Abass
# ================================

echo ""
echo "================================"
echo "  MASTER CONTROL SCRIPT"
echo "  Date: $(date)"
echo "================================"

# Go to scripts folder
cd ~/cloud-project/week4/scripts

echo ""
echo "Which script do you want to run?"
echo "---------------------------------"
echo "1. Deploy Website"
echo "2. Check Connectivity"
echo "3. Check Security"
echo "4. Run Maintenance"
echo "5. Run ALL checks"
echo "---------------------------------"
read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        echo "Running deployment..."
        ./deploy.sh
        ;;
    2)
        echo "Running connectivity check..."
        ./connectivity.sh
        ;;
    3)
        echo "Running security check..."
        ./security.sh
        ;;
    4)
        echo "Running maintenance..."
        ./maintenance.sh
        ;;
    5)
        echo "Running ALL scripts..."
        ./connectivity.sh
        ./security.sh
        ./maintenance.sh
        ;;
    *)
        echo "Invalid choice!"
        ;;
esac

echo ""
echo "================================"
echo "  MASTER SCRIPT COMPLETE!"
echo "================================"
