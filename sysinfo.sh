#!/bin/bash

echo "System Info Checker by Zhameer"
echo "------------------------------"

echo "Date & Time: $(date)"
echo ""

echo "Uptime:"
uptime
echo ""

echo "Disk Usage:"
df -h
echo ""

echo "Memory Usage:"
free -h
echo ""

echo "Logged in users:"
who
echo ""

echo "Done. System check complete."
