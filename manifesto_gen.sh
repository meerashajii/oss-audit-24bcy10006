#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Meera Shaji | Roll: 24bhi10040

echo "======================================"
echo "   Open Source Manifesto Generator"
echo "======================================"
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

cat > $OUTPUT << EOF
====================================
    OPEN SOURCE MANIFESTO
====================================
Date: $DATE
Author: Meera Shaji (24bhi10040)

I believe in the power of open source because:

Every day, I use $TOOL — a tool built by a community that chose
to share rather than sell. To me, freedom means $FREEDOM — the
ability to learn, modify, and share without barriers.

I dream of building $BUILD and sharing it freely with the world,
because knowledge grows when it is shared, not hidden.

This manifesto represents my commitment to the open source
philosophy: transparency, collaboration, and freedom.

"Standing on the shoulders of giants" — I will contribute
so others can stand on mine.

====================================
EOF

echo ""
echo "✅ Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
echo ""
echo "======================================"
