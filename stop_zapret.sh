#!/bin/bash

if [ -f /tmp/zapret.pid ]; then
    PID=$(cat /tmp/zapret.pid)
    kill $PID 2>/dev/null
    rm /tmp/zapret.pid
    echo "zapret остановлен (PID: $PID)"
else
    echo "zapret не запущен"
fi
