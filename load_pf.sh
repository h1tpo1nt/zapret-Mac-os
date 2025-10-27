#!/bin/bash

ZAPRET_DIR="/Users/h1tpo1nt/Downloads/zapret/zapret-v72.2"

# Загрузка правил pf
echo "Загрузка правил pf..."
sudo pfctl -f "$ZAPRET_DIR/zapret.pf.conf"
sudo pfctl -e

echo "Правила pf активированы"
