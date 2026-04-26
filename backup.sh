#!/bin/bash

source config.conf

GREEN="\e[32m"
RED="\e[31m"
NC="\e[0m"

DATE=$(date +%F_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DIR" "$LOG_DIR"

log() {
 echo "$(date) : $1" >> "$LOG_DIR/automation.log"
}

echo -e "${GREEN}[+] Starting backup...${NC}"

tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

if [ $? -eq 0 ]
then
 echo -e "${GREEN}[+] Backup created:${NC} $BACKUP_FILE"
 log "Backup success $BACKUP_FILE"
else
 echo -e "${RED}[-] Backup failed${NC}"
 log "Backup failed"
 exit 1
fi
