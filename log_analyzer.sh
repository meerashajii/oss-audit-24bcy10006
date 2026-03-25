#!/bin/bash
# Script 4: Log File Analyzer
# Author: Meera Shaji | Roll: 24bhi10040
# Usage: ./log_analyzer.sh [logfile] [keyword]

LOGFILE=${1:-"/var/log/syslog"}
KEYWORD=${2:-"error"}
COUNT=0

echo "======================================"
echo "        Log File Analyzer"
echo "======================================"
echo "File: $LOGFILE"
echo "Keyword: $KEYWORD"
echo ""

if [ ! -f "$LOGFILE" ]; then
    echo "❌ Error: File $LOGFILE not found."
    echo "Try: /var/log/messages or /var/log/syslog"
    exit 1
fi

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "📊 Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""
echo "--- Last 5 matching lines ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "======================================"
