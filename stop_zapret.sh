#!/bin/bash

if [ -f /tmp/zapret.pid ]; then
    kill $(cat /tmp/zapret.pid)
    rm /tmp/zapret.pid
    echo "zapret остановлен"
else
    echo "zapret не запущен (файл PID не найден)"
fi
