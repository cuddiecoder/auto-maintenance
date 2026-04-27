#!/bin/bash

while true
do
clear

echo "====================================="
echo "  Linux Auto Maintenance Toolkit"
echo "====================================="
echo "1) Run Backup"
echo "2) Run Cleanup"
echo "3) System Monitor"
echo "4) Restore Backup"
echo "5) View Logs"
echo "6) Exit"
echo "====================================="

read -p "Select an option [1-6]: " choice

case $choice in

1)
echo "Running backup..."
./backup.sh
read -p "Press Enter to continue..."
;;

2)
echo "Running cleanup..."
./cleanup.sh
read -p "Press Enter to continue..."
;;

3)
echo "Running system monitor..."
./monitor.sh
read -p "Press Enter to continue..."
;;

4)
echo "Launching restore..."
./restore.sh
read -p "Press Enter to continue..."
;;

5)
echo "Viewing logs..."
cat logs/automation.log
read -p "Press Enter to continue..."
;;

6)
echo "Exiting..."
exit 0
;;

*)
echo "Invalid option."
sleep 2
;;

esac

done
