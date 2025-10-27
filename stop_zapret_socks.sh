#!/bin/bash
if [ -f /tmp/zapret_socks.pid ]; then
    PID=$(cat /tmp/zapret_socks.pid)
    kill $PID 2>/dev/null
    rm /tmp/zapret_socks.pid
    echo "zapret SOCKS остановлен (PID: $PID)"
else
    echo "zapret SOCKS не запущен"
fi
