# Configuración de Correo Saliente (SMTP) para Calibre-Web usando SMTP2GO

Este documento describe paso a paso cómo configurar el envío de correos desde Calibre-Web utilizando SMTP2GO como servidor SMTP saliente.

---

## 1. Crear cuenta en SMTP2GO

- Regístrate en [smtp2go.com](https://www.smtp2go.com/) y crea una cuenta gratuita.
- Inicia sesión en el panel de control.

## 2. Verificar el dominio en SMTP2GO

- Agrega un **Sender Domain** con tu dominio.
- SMTP2GO mostrará los registros DNS que debes agregar en tu proveedor (por ejemplo, Cloudflare):

| Tipo  | Nombre               | Contenido               | Proxy    |
|-------|----------------------|------------------------|----------|
| CNAME | emXXXXXX             | return.smtp2go.net     | DNS only |
| CNAME | sXXXXXX._domainkey   | dkim.smtp2go.net       | DNS only |
| CNAME | link                 | track.smtp2go.net      | DNS only |
| TXT   | tudominio.com        | v=spf1 include:_spf.mx.cloudflare.net include:spf.smtp2go.com ~all | DNS only |

- Añade estos registros en tu proveedor DNS y espera a que SMTP2GO los verifique.

## 3. Crear usuario SMTP o API Key

- En SMTP2GO, genera un usuario SMTP y contraseña, o una API Key.

## 4. Configurar variables en Docker Compose

Edita tu archivo `docker-compose.yml` y añade las variables de entorno en el servicio `calibre-web`:

```yaml
environment:
  - EMAIL_USE_TLS=True
  - EMAIL_HOST=mail.smtp2go.com
  - EMAIL_PORT=587
  - EMAIL_HOST_USER=tu_correo_verificado@tudominio.com
  - EMAIL_HOST_PASSWORD=tu_contraseña_smtp2go
  - EMAIL_FROM=tu_correo_verificado@tudominio.com

Guarda y reinicia el contenedor:

bash
Copiar
Editar
docker compose up -d --force-recreate calibre-web
5. Configurar Calibre-Web
Accede a Calibre-Web como administrador.

Ve a Admin > E-mail Server Configuration.

Configura:

Campo	Valor
SMTP Server	mail.smtp2go.com
Port	587
Encryption	TLS
Username	tu_correo_verificado@tudominio.com
Password	(tu contraseña SMTP2GO)
From Email	tu_correo_verificado@tudominio.com

Guarda y prueba enviar un correo.

6. Envío a eReaders
Los usuarios pueden agregar sus direcciones eReader en su perfil para enviar libros desde Calibre-Web.

Notas
Asegúrate de autorizar el correo remitente en los servicios de los dispositivos eReader (ejemplo Kindle).

Los registros SPF y DKIM ayudan a evitar que los correos se marquen como spam.

Documento actualizado: [25Jul25]
