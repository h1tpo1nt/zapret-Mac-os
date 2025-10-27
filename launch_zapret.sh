#!/bin/bash

ZAPRET_DIR="/Users/h1tpo1nt/Downloads/zapret/zapret-v72.2"
LISTS="$ZAPRET_DIR/lists"

cd "$ZAPRET_DIR"

# Запуск tpws с обходом DPI
./binaries/mac64/tpws \
--port=988 \
--daemon \
--pidfile=/tmp/zapret.pid \
--hostlist="$LISTS/list-general.txt" \
--split-pos=2 \
--disorder \
--oob \
--hostcase \
--domcase

echo "zapret tpws запущен на порту 988"
echo "PID: $(cat /tmp/zapret.pid)"
