#!/bin/bash
# Script 1: System Identity Report
# Author: Meera Shaji | Roll: 24bhi10040

STUDENT_NAME="Meera Shaji"
ROLL_NUMBER="24bhi10040"
SOFTWARE_CHOICE="Linux Kernel"

echo "================================"
echo "  Open Source Audit — $STUDENT_NAME ($ROLL_NUMBER)"
echo "================================"
echo "Software: $SOFTWARE_CHOICE"
echo "--------------------------------"
echo "Kernel Version : $(uname -r)"
echo "OS Name        : $(uname -s)"
echo "User           : $(whoami)"
echo "Home Directory : $HOME"
echo "Uptime         : $(uptime -p)"
echo "Date/Time      : $(date)"
echo "--------------------------------"
echo "OS License: GPL v2 (Linux Kernel)"
echo "================================"

