#!/bin/bash

# Cargar variables de entorno desde .env si no están definidas
if [ -z "$TELEGRAM_BOT_TOKEN" ] || [ -z "$TELEGRAM_CHAT_ID" ]; then
  if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
  fi
fi

# Verificar que las variables están definidas
if [ -z "$TELEGRAM_BOT_TOKEN" ]; then
  echo "❌ Error: La variable TELEGRAM_BOT_TOKEN no está definida."
  exit 1
fi

if [ -z "$TELEGRAM_CHAT_ID" ]; then
  echo "❌ Error: La variable TELEGRAM_CHAT_ID no está definida."
  exit 1
fi

# Obtener mensaje
MENSAJE="$1"
if [ -z "$MENSAJE" ]; then
  echo "Uso: $0 \"mensaje a enviar\""
  exit 1
fi

# Enviar mensaje
curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
  -d chat_id="$TELEGRAM_CHAT_ID" \
  -d text="$MENSAJE" \
  -d parse_mode="Markdown"
