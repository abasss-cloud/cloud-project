#!/bin/bash

WEBSITES="google.com github.com facebook.com amazon.com"
LOG_FILE=~/portfolio/week4/monitor.log
DATE=$(date)

check_website() {
    ping -c 1 $1 > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "$1 is UP! (ping)"
        echo "$DATE - $1 - UP (ping)" >> $LOG_FILE
    else
        curl -s -I $1 > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            echo "$1 is UP! (http)"
            echo "$DATE - $1 - UP (http)" >> $LOG_FILE
        else
            echo "$1 is DOWN!"
            echo "$DATE - $1 - DOWN" >> $LOG_FILE
        fi
    fi
}


echo "WEBSITE MONITOR"
echo "Date: $DATE"
echo "User: $USER"
echo ""


for SITE in $WEBSITES; do
    check_website $SITE
done


echo""
echo "CHECK COMPLETE!"
echo "Log saved to: $LOG_FILE"
