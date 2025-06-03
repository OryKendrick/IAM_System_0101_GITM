#!/bin/bash
set -e

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
FILENAME="keycloak_backup_$TIMESTAMP.sql"

docker exec postgres pg_dump -U keycloak keycloak > "./backups/$FILENAME"

echo "Backup saved to backups/$FILENAME"

