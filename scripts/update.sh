#!/bin/bash
set -e

docker compose pull
docker compose up -d --remove-orphans

/usr/bin/bash "$(dirname "$0")/notify.sh" "✅ Sistema actualizado correctamente"
