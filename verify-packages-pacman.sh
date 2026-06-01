#!/bin/bash

OK=""
BAD=""
ARCHIVO="paquetes.txt" #cambia esto al archivo con los paquetes

while read pkg; do
    if pacman -Si "$pkg" >/dev/null 2>&1; then
        OK="$OK $pkg"
    else
        BAD="$BAD $pkg"
    fi
done < $ARCHIVO

echo "=== VALIDOS ==="
echo "$OK"

echo ""
echo "=== NO EXISTEN ==="
echo "$BAD"
