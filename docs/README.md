# Documentación Técnica – calibregrimorios.org

Este directorio contiene la documentación del proyecto de biblioteca digital privada **Calibre-Grimorios**, basado en Calibre-Web, Docker y Raspberry Pi.

## 📚 Índice de Documentos

| Documento | Descripción |
| --------- | ----------- |
| [Email-SMTP2GO.md](Email-SMTP2GO.md) | Configuración de correo saliente usando SMTP2GO |
| `docker-compose.yml` | Orquestación de servicios en Docker (definido en el directorio raíz) |
| `scripts/` | Scripts de respaldo, mantenimiento y notificaciones |
| `nginx/` | Configuraciones para acceso seguro a través de Cloudflare Tunnel |
| `README.md` (raíz) | Visión general del proyecto y guía de instalación |

## 🧩 Componentes del Proyecto

- Raspberry Pi 4 con Raspbian
- Docker + Docker Compose
- Calibre-Web
- Cloudflare Tunnel
- SMTP2GO (envío de libros por correo)
- Cloudflare Email Routing (recepción de correos)
- SFTP (subida alternativa de libros)
- GitHub (documentación y control de versiones)

## 🔐 Notas sobre Seguridad

No incluir archivos sensibles como `.env`, claves privadas o contraseñas SMTP en este repositorio. Usar archivos `.env` o variables de entorno en `docker-compose.yml` para manejar credenciales de forma segura.

---

📅 Documento actualizado: 25 de julio de 2025
