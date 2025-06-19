# Mantenimiento del Sistema calibregrimorios.org

Este documento describe las tareas de mantenimiento que aseguran el funcionamiento óptimo del sistema.

## 1. Actualización automática de contenedores Docker

- Se usa un contenedor llamado **watchtower** que monitorea y actualiza automáticamente los contenedores en ejecución.
- Esto garantiza que siempre estés usando versiones recientes y seguras de Calibre-Web y otros servicios.

## 2. Backups y restauración

- Se realizan respaldos automáticos y manuales periódicos de la librería y configuración.
- Los respaldos se almacenan en `/mnt/disco_calibre/backups/` en formato `.tar.gz` comprimido.
- En caso de fallo, la restauración se realiza descomprimiendo el backup más reciente y reemplazando la librería.

## 3. Notificaciones por Telegram

- El sistema envía alertas y reportes sobre el estado de los backups y actualizaciones mediante un bot de Telegram.
- Esto ayuda a detectar problemas a tiempo y tomar acciones rápidas.

## 4. Monitorización y logs

- Los logs de Docker y los scripts de mantenimiento se revisan semanalmente.
- Se recomienda configurar alertas adicionales según sea necesario.

## 5. Control de acceso y seguridad

- El acceso al servidor está protegido con contraseña.
- El sitio utiliza HTTPS con certificados gestionados por Let’s Encrypt para cifrar la comunicación.

---

## Contacto

Proyecto personal de Ruy Guerra  
Repositorio: [github.com/tasiturno/calibregrimorios](https://github.com/tasiturno/calibregrimorios)
