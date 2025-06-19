# Sistema de Backups

Los respaldos automáticos protegen la biblioteca de calibre-web y la configuración del sistema.

## 🗂️ Directorios respaldados

- `/mnt/disco_calibre/calibre-library` → Biblioteca principal
- `/home/pi/calibregrimorios` → Configuración del sistema

## 📅 Frecuencia

- **Biblioteca**: respaldo diario a las 02:00
- **Sistema completo**: respaldo semanal los miércoles a las 03:00

## 🗃️ Formato

- Archivos `.tar.gz` con fecha y hora
- Ejemplo: `library_backup_2025-06-19_02-00.tar.gz`

## 📤 Destino

- Todos los backups se almacenan en:  
  `/mnt/disco_calibre/backups/`

## 🔔 Notificaciones

- Se envía mensaje por Telegram con resultado:
  - ✅ Éxito
  - ❌ Error

## 🔄 Rotación de backups

- Los scripts eliminan respaldos antiguos automáticamente:
  - Biblioteca: se conservan los últimos **7 días**
  - Sistema: se conservan las últimas **4 semanas**
