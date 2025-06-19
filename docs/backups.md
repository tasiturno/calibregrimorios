# Backups del sistema calibregrimorios.org

## 🗂️ Archivos respaldados

- Biblioteca Calibre: `/mnt/disco_calibre/calibre-library`
- Configuraciones y scripts: `/home/pi/calibregrimorios`

Los respaldos se comprimen en formato `.tar.gz` para ahorro de espacio.

## 📍 Ubicación del respaldo

Los archivos se guardan en:

/mnt/disco_calibre/backups/

yaml
Copiar
Editar

Con nombres como:

system_backup_YYYY-MM-DD_HH-MM.tar.gz

markdown
Copiar
Editar

## 🔄 Frecuencia

- **Automática cada semana** (mediante `cron`)
- Script utilizado: `scripts/backup.sh`

## 📢 Notificaciones

Al finalizar el backup, se envía una notificación por Telegram al bot configurado (ver `scripts/notify.sh`).

## 🛡️ Seguridad

- El disco de respaldo está montado como unidad externa.
- Sólo el usuario `pi` tiene acceso de escritura.
- Se recomienda sincronizar manualmente con un almacenamiento externo cada mes.

## 🧪 Verificación

Cada backup puede verificarse descomprimiéndolo y listando su contenido:

```bash
tar -tzf system_backup_2025-06-19_03-11.tar.gz
Repositorio: github.com/tasiturno/calibregrimorios

markdown
Copiar
Editar

3. Luego guarda y cierra:
   - `Ctrl + O`, Enter
   - `Ctrl + X`

4. Y finalmente súbelo al repositorio:

```bash
git add docs/backups.md
git commit -m "Documentación: sistema de backups automáticos"
git push
