# Configuración NGINX para Calibre-Web

Este archivo `calibre.conf` es un ejemplo de configuración para servir Calibre-Web utilizando NGINX como proxy reverso.

## ¿Qué hace este archivo?

- Escucha en el puerto 80
- Redirige el tráfico a un contenedor Docker (o servicio local) que corre Calibre-Web en el puerto `8083`
- Establece los encabezados necesarios para que funcione correctamente

## Advertencia

Este archivo **no incluye configuración HTTPS ni certificados**. Si estás usando Let's Encrypt o similar, asegúrate de **no subir tus archivos `.pem` o `.key`** a este repositorio. Solo incluye ejemplos seguros y genéricos.

## Ubicación sugerida

En sistemas Debian/Ubuntu, este archivo puede colocarse en:

/etc/nginx/sites-available/calibre

yaml
Copiar
Editar

Y luego enlazarse con:

sudo ln -s /etc/nginx/sites-available/calibre /etc/nginx/sites-enabled/
sudo systemctl reload nginx
