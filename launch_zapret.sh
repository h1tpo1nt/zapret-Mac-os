#!/bin/bash
ZAPRET_DIR="/Users/h1tpo1nt/Downloads/zapret/zapret-v72.2"
LISTS="$ZAPRET_DIR/lists"
cd "$ZAPRET_DIR"
sudo ./binaries/mac64/tpws --port=988 --daemon --pidfile=/tmp/zapret.pid --hostlist="$LISTS/list-general.txt" --split-pos=2 --disorder
echo "zapret tpws запущен на порту 988"
sleep 1
if [ -f /tmp/zapret.pid ]; then
    echo "PID: $(cat /tmp/zapret.pid)"
else
    echo "Ошибка: tpws не запустился"
fi
