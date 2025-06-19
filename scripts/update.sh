#!/bin/bash

# Script para actualizar contenedores Docker usando watchtower

echo "Iniciando actualización: $(date)" >> /mnt/disco_calibre/backups/update.log

# Ejecutar watchtower para actualizar todos los contenedores
docker run --rm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  containrrr/watchtower --cleanup --timeout 30

if [ $? -eq 0 ]; then
  echo "Actualización completada con éxito: $(date)" >> /mnt/disco_calibre/backups/update.log
else
  echo "ERROR en actualización: $(date)" >> /mnt/disco_calibre/backups/update.log
fi
