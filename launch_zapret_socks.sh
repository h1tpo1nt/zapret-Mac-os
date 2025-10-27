#!/bin/bash
ZAPRET_DIR="/Users/h1tpo1nt/Downloads/zapret/zapret-v72.2"
LISTS="$ZAPRET_DIR/lists"
cd "$ZAPRET_DIR"
./binaries/mac64/tpws --port=1988 --socks --daemon --pidfile=/tmp/zapret_socks.pid --hostlist="$LISTS/list-general.txt" --split-pos=2 --disorder
echo "zapret tpws (SOCKS) запущен на порту 1988"
sleep 1
if [ -f /tmp/zapret_socks.pid ]; then
    echo "PID: $(cat /tmp/zapret_socks.pid)"
    echo ""
    echo "Настройте SOCKS5 прокси в macOS:"
    echo "1. Системные настройки → Сеть"
    echo "2. Wi-Fi → Дополнения → Прокси"
    echo "3. Включите 'SOCKS Proxy'"
    echo "4. Сервер: 127.0.0.1  Порт: 1988"
else
    echo "Ошибка: tpws не запустился"
fi
