#!/bin/bash

# Script para hacer backup comprimido semanal de la librería de Calibre-Web

# Variables
BACKUP_DIR="/mnt/disco_calibre/backups"
LIBRARY_DIR="/mnt/disco_calibre/calibre-library"
DATE=$(date +"%Y-%m-%d_%H-%M")
BACKUP_FILE="${BACKUP_DIR}/calibre_backup_${DATE}.tar.gz"
LOG_FILE="${BACKUP_DIR}/backup.log"

# Crear directorio de backups si no existe
mkdir -p "$BACKUP_DIR"

echo "Iniciando backup: $(date)" >> "$LOG_FILE"

# Crear backup comprimido
tar -czf "$BACKUP_FILE" -C "$LIBRARY_DIR" .

if [ $? -eq 0 ]; then
    echo "Backup exitoso: $BACKUP_FILE" >> "$LOG_FILE"
else
    echo "ERROR en backup: $BACKUP_FILE" >> "$LOG_FILE"
fi

# Opcional: eliminar backups antiguos (más de 4 semanas)
find "$BACKUP_DIR" -type f -name "calibre_backup_*.tar.gz" -mtime +28 -exec rm {} \;

echo "Backup finalizado: $(date)" >> "$LOG_FILE"
