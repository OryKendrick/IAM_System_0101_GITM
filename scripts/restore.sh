#!/bin/bash
set -e

if [ -z "$1" ]; then
  echo "Please specify the backup SQL file to restore"
  echo "Usage: $0 backups/keycloak_backup_20250602_1430.sql"
  exit 1
fi

POSTGRES_CONTAINER="iam_system_0101_gitm-postgres-1"
cat "$1" | docker exec -i "$POSTGRE_CONTAINER" psql -U keycloak -d keycloak

echo "Database restored from $1"

