# calibregrimorios.org

📚 Plataforma de gestión de biblioteca digital autoalojada con [Calibre-Web](https://github.com/janeczku/calibre-web), ejecutándose en una Raspberry Pi 4.

---

## 🔧 Tecnologías utilizadas

- Raspberry Pi 4 con Raspberry Pi OS (antes Raspbian)
- Docker y Docker Compose
- Calibre-Web para gestión y visualización de ebooks
- NGINX como proxy reverso con HTTPS usando Let's Encrypt
- Let's Encrypt para certificados SSL/TLS automáticos
- Telegram Bot para notificaciones de backups y estado del sistema
- Disco duro externo montado en `/mnt/disco_calibre` para almacenamiento de la biblioteca

---

## 📦 Estructura del repositorio

- `docker-compose.yml`: configuración de contenedores Docker para Calibre-Web y Watchtower (actualizaciones automáticas)
- `docs/`: documentación técnica, manuales y guías (backups, SMTP, mantenimiento, troubleshooting)
- `scripts/`: scripts para backup y mantenimiento automatizado
- `README.md`: este archivo principal de documentación

---

## 🚀 Instalación rápida

1. Clonar repositorio  
   ```bash
   git clone https://github.com/tu_usuario/calibregrimorios.org.git
   cd calibregrimorios.org

Configurar variables de entorno en docker-compose.yml (usuario, zona horaria, SMTP, etc.)

Iniciar servicios con Docker Compose

bash
Copiar
Editar
docker compose up -d
Configurar NGINX y certificados Let's Encrypt (opcional si usas proxy o Cloudflare)

Acceder a Calibre-Web en http://tu_ip:8083 y crear usuario admin

⚙️ Configuración de correo SMTP con SMTP2GO
Verifica el dominio en SMTP2GO y añade registros DNS CNAME y TXT (SPF, DKIM) en Cloudflare.

Configura en docker-compose.yml las variables SMTP (host, puerto, usuario, contraseña).

Configura Calibre-Web para usar el correo noreply@calibregrimorios.org.

Prueba envío de correos para confirmación.

🛠️ Mantenimiento y backups
Scripts automáticos en scripts/ para respaldo periódico de la base de datos y la biblioteca.

Notificaciones vía Telegram configuradas para alertar errores o confirmaciones.

Actualizaciones automáticas con Watchtower ejecutándose semanalmente.

📚 Uso y administración
Usuarios pueden registrarse públicamente o acceder con cuenta admin.

Opciones para subir, descargar y enviar libros a ereaders (Kindle, Kobo).

Control de permisos para descarga, edición y subida.

Configuración avanzada disponible en UI de Calibre-Web.

📞 Contacto
Para soporte o sugerencias, contacta a:
Ruy Guerra - noreply@calibregrimorios.org
Repositorio: https://github.com/tasiturno/calibregrimorios.org
