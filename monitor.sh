#!/bin/bash

source config.conf

mkdir -p "$REPORT_DIR"

REPORT="$REPORT_DIR/system_report.txt"

echo "System Health Report - $(date)" > $REPORT
echo "=============================" >> $REPORT

echo "Disk Usage:" >> $REPORT
df -h >> $REPORT

echo "" >> $REPORT
echo "Memory Usage:" >> $REPORT
free -h >> $REPORT

echo "" >> $REPORT
echo "CPU Load:" >> $REPORT
uptime >> $REPORT

usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $usage -gt $DISK_THRESHOLD ]
then
 echo "WARNING: Disk above threshold!" >> $REPORT
fi

cat $REPORT
