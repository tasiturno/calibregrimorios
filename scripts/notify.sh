#!/bin/bash

MENSAJE="$1"
TOKEN="7962768216:AAHjvAH_7hcOKMSGWqhzl6Zfif-kIbN22II"
CHAT_ID="7561699463"

curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" \
    -d chat_id="$CHAT_ID" \
    -d text="$MENSAJE"
