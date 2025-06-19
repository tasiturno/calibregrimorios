# Troubleshooting (Solución de problemas) del sistema calibregrimorios.org

Este documento contiene problemas comunes y sus soluciones para el sistema.

## 1. Problema: No se puede subir libros grandes a Calibre-Web

- **Causa probable:** Límite de tamaño de archivos en la configuración del servidor o del contenedor Docker.
- **Solución:** Revisar y ajustar los parámetros `client_max_body_size` en NGINX y variables de entorno de Calibre-Web para permitir archivos más grandes.

## 2. Problema: Error al hacer push a GitHub

- **Causa probable:** No tener el repositorio actualizado localmente.
- **Solución:** Ejecutar `git pull --rebase origin main` antes de hacer push para sincronizar los cambios.

## 3. Problema: Scripts de backup o update no se ejecutan correctamente

- **Causa probable:** Permisos insuficientes o errores en los scripts.
- **Solución:** Asegúrate que los scripts tienen permisos de ejecución (`chmod +x scripts/*.sh`), y revisa los logs generados.

## 4. Problema: No llegan notificaciones por Telegram

- **Causa probable:** Token incorrecto o problemas de red.
- **Solución:** Verifica que el token del bot Telegram esté correcto en el script `notify.sh` y que la Raspberry Pi tenga acceso a Internet.

## 5. Problema: Certificado HTTPS no funciona o expiró

- **Solución:** Ejecutar el comando de renovación automática de Let's Encrypt o revisar logs para errores.

---

## Contacto

Proyecto personal de Ruy Guerra  
Repositorio: [github.com/tasiturno/calibregrimorios](https://github.com/tasiturno/calibregrimorios)
