# Respaldos y Restauración

## Respaldos

- Los respaldos de la librería Calibre-Web se generan semanalmente mediante el script `scripts/backup.sh`.
- Los archivos de respaldo se almacenan en `/mnt/disco_calibre/backups`.
- El formato de los archivos es: `calibre_backup_YYYY-MM-DD_HH-MM.tar.gz`.
- Los respaldos antiguos (más de 4 semanas) se eliminan automáticamente.

## Restauración

Para restaurar la librería desde el respaldo más reciente, ejecutar:

```bash
./scripts/restore.sh

