# Notificaciones por Telegram

El sistema envía notificaciones automáticas al finalizar:

- Backups
- Actualizaciones automáticas
- Scripts manuales

## Configuración

1. Crear un bot en @BotFather y obtener el token.
2. Obtener tu `chat_id` usando un mensaje de prueba y un bot tipo `curl`.
3. Guardar los valores en `.env`:

TELEGRAM_BOT_TOKEN=...
TELEGRAM_CHAT_ID=...

bash
Copiar
Editar

## Uso

Los scripts usan `notify.sh` para enviar mensajes:

```bash
./scripts/notify.sh "Backup finalizado con éxito"
Esto garantiza monitoreo remoto simple y eficaz.

markdown
Copiar
Editar

Luego:

1. `Ctrl + O` → Enter para guardar.
2. `Ctrl + X` para salir.

Y después, sube el archivo a GitHub:

```bash
git add docs/telegram-notificaciones.md
git commit -m "Documentación: notificaciones por Telegram"
git push
