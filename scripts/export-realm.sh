#!/bin/bash
set -e

REALM_NAME="myrealm"
EXPORT_DIR="/opt/keycloak/data/import"

docker exec keycloak /opt/keycloak/bin/kc.sh export --realm $REALM_NAME --dir $EXPORT_DIR --users realm_file

echo "Realm '$REALM_NAME' exported to keycloak-data/import"

