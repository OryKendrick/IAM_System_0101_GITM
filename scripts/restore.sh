#!/bin/bash
set -e

if [ -z "$1" ]; then
  echo "Please specify the backup file to restore"
  echo "Usage: ./scripts/restore.sh backups/keycloak_backup_20250602_1430.sql"
  exit 1
fi

cat "$1" | docker exec -i postgres psql -U keycloak keycloak

echo "Database restored from $1"

