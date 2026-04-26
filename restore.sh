#!/bin/bash

echo "Available backups:"
ls backups/

read -p "Enter backup filename: " file
read -p "Restore location: " target

mkdir -p "$target"

tar -xzf backups/$file -C "$target"

echo "Restore complete."
