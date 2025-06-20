#!/bin/bash

# Script para restaurar la librería de Calibre-Web desde el backup más reciente

BACKUP_DIR="/mnt/disco_calibre/backups"
RESTORE_DIR="/mnt/disco_calibre/calibre-library"
LOG_FILE="${BACKUP_DIR}/restore.log"

# Buscar el backup más reciente
LATEST_BACKUP=$(ls -t "$BACKUP_DIR"/calibre_backup_*.tar.gz 2>/dev/null | head -n 1)

if [ ! -f "$LATEST_BACKUP" ]; then
    echo "No se encontró ningún archivo de backup calibre en $BACKUP_DIR" | tee -a "$LOG_FILE"
    exit 1
fi

echo "Iniciando restauración desde: $LATEST_BACKUP - $(date)" | tee -a "$LOG_FILE"

# Crear carpeta si no existe
mkdir -p "$RESTORE_DIR"

# Extraer backup (sobrescribirá los archivos existentes)
tar -xvzf "$LATEST_BACKUP" -C "$RESTORE_DIR"

if [ $? -eq 0 ]; then
    echo "Restauración exitosa en $RESTORE_DIR" | tee -a "$LOG_FILE"
else
    echo "ERROR durante la restauración" | tee -a "$LOG_FILE"
    exit 1
fi

echo "Restauración finalizada: $(date)" | tee -a "$LOG_FILE"
