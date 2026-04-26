#!/bin/bash

source config.conf

find "$BACKUP_DIR" -name "*.tar.gz" -mtime +$RETENTION_DAYS -delete

echo "$(date): old backups removed" >> logs/automation.log
echo "Cleanup completed."
