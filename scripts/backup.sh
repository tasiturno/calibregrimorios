#!/bin/bash
set -e

FECHA=$(date +'%Y-%m-%d_%H-%M')
DESTINO="/mnt/disco_calibre/backups/system_backup_$FECHA.tar.gz"

tar -czpf "$DESTINO" --exclude=/mnt/disco_calibre/backups /home/pi /etc /var/lib/docker

/usr/bin/bash "$(dirname "$0")/notify.sh" "✅ Backup exitoso: $FECHA"
