#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Meera Shaji | Roll: 24bhi10040

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/boot")

echo "======================================"
echo "     Disk & Permission Audit Report"
echo "======================================"
echo ""

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" 2>/dev/null | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "📁 $DIR"
        echo "   Permissions: $PERMS"
        echo "   Size: ${SIZE:-N/A}"
        echo ""
    else
        echo "❌ $DIR does not exist on this system"
        echo ""
    fi
done

echo "======================================"
echo "Audit completed on: $(date)"
echo "======================================"
