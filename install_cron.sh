#!/bin/bash

PROJECT="/home/ethic/cybersec/auto-maintenance"

# Preserve existing crontab and add scheduled jobs
(
crontab -l 2>/dev/null

# Daily backup at 2:00 AM
echo "0 2 * * * $PROJECT/backup.sh >> $PROJECT/logs/cron.log 2>&1"

# Weekly cleanup Sunday at 3:00 AM
echo "0 3 * * 0 $PROJECT/cleanup.sh >> $PROJECT/logs/cron.log 2>&1"

# Hourly system monitoring
echo "0 * * * * $PROJECT/monitor.sh >> $PROJECT/logs/cron.log 2>&1"

) | crontab -

echo "Cron automation installed successfully."
crontab -l
