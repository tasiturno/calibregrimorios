# Arquitectura del sistema calibregrimorios.org

Este documento describe la arquitectura técnica del sistema calibregrimorios.org, basado en una Raspberry Pi 4, contenedores Docker, y automatización de backups y notificaciones.

---

## 📦 Componentes principales

- **Raspberry Pi 4**: Servidor físico con sistema operativo Raspberry Pi OS Lite.
- **Docker + Docker Compose**: Para orquestar contenedores.
- **NGINX**: Servidor web inverso que gestiona HTTPS y redirige al contenedor de Calibre-Web.
- **Calibre-Web**: Interfaz web ligera para acceder a la biblioteca de ebooks.
- **Disco externo**: Almacenamiento principal montado en `/mnt/disco_calibre`.

---

## 🔁 Contenedores

```text
+-----------------------------+
|    Contenedor NGINX        |
|  (proxy inverso, HTTPS)    |
+-----------------------------+
            │
            ▼
+-----------------------------+
|    Contenedor Calibre-Web  |
|  (biblioteca web de libros)|
+-----------------------------+
🔐 Seguridad
HTTPS con certificados SSL automáticos (Let's Encrypt)

Acceso a Calibre-Web protegido con usuario y contraseña

SSH habilitado sólo en red local

/home/pi/calibregrimorios/
│
├── docker-compose.yml
├── .env                 # Variables sensibles
├── scripts/             # Automatización (backups, updates)
└── docs/                # Documentación del sistema
🔔 Automatización
Respaldo diario/semanal de la carpeta /mnt/disco_calibre/calibre-library

Notificación por Telegram con el resultado (éxito o error)

Actualización automática de los contenedores con watchtower y logs

🌐 Dominio y acceso
Dominio: calibregrimorios.org

Configurado mediante DNS en Namecheap, apuntando a IP dinámica gestionada por DuckDNS

🧪 Pruebas y mantenimiento
Scripts manuales y automáticos probados localmente

Controles semanales para asegurar funcionamiento continuo del sistema

👤 Responsable
Proyecto personal de Ruy Guerra

Repositorio: github.com/tasiturno/calibregrimorios

yaml
Copiar
Editar

---

### 💾 Guardar y subir

Después de guardar (`Ctrl+O`, Enter, `Ctrl+X`), ejecuta:

```bash
git add docs/arquitectura.md
git commit -m "Documentación: arquitectura técnica del sistema"
git push
