#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Meera Shaji | Roll: 24bhi10040

PACKAGE="linux"

echo "=================================="
echo "     FOSS Package Inspector"
echo "=================================="

if command -v rpm &>/dev/null; then
    if rpm -q $PACKAGE &>/dev/null 2>&1; then
        echo "✅ $PACKAGE is installed."
        rpm -qi $PACKAGE 2>/dev/null | grep -E 'Version|License|Summary'
    else
        echo "❌ $PACKAGE is NOT installed via RPM"
    fi
elif command -v dpkg &>/dev/null; then
    if dpkg -l | grep -q $PACKAGE; then
        echo "✅ $PACKAGE is installed."
        dpkg -l | grep $PACKAGE
    else
        echo "❌ $PACKAGE is NOT installed"
    fi
else
    echo "⚠️ Package manager not detected"
fi

echo ""
echo "--- Software Philosophy ---"
case $PACKAGE in
    linux)   echo "Linux Kernel: The heart of open source - freedom at the core" ;;
    httpd)   echo "Apache: The web server that built the open internet" ;;
    mysql)   echo "MySQL: Open source at the heart of millions of apps" ;;
    firefox) echo "Firefox: Fighting for an open web" ;;
    vlc)     echo "VLC: Plays anything - built by students for freedom" ;;
    *)       echo "$PACKAGE: Open source empowering users worldwide" ;;
esac
