#!/bin/bash

# Token del bot de Telegram
TOKEN="7962768216:AAHjvAH_7hcOKMSGWqhzl6Zfif-kIbN22II"

# Chat ID del destinatario
CHAT_ID="7561699463"

# Mensaje a enviar
MESSAGE=$1

# Enviar mensaje vía Telegram
curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" \
     -d chat_id="$CHAT_ID" \
     -d text="$MESSAGE"
