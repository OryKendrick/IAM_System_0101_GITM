# IAM_System_0101_GITM
IAM project

connexion to Keycloak admin: 
1: docker compose up -d
2: docker exec -it iam_system_0101_gitm-keycloak bash -c 'KC_DB=postgres \
  KC_DB_URL="jdbc:postgresql://exec -it iam_system_0101_gitm-postgres:5432/keycloak" \
  KC_DB_USERNAME=keycloak \
  KC_DB_PASSWORD=password \
  /opt/keycloak/bin/kc.sh import \
  --dir=/opt/keycloak/data/import'
3:Go to http://localhost/auth
4: do what you need to do
5:docker exec -it iam_system_0101_gitm-keycloak-1   bash -c 'KC_DB=postgres \
  KC_DB_URL="jdbc:postgresql://iam_system_0101_gitm-postgres-1:5432/keycloak" \
  KC_DB_USERNAME=keycloak \
  KC_DB_PASSWORD=keycloak \
  /opt/keycloak/bin/kc.sh export \
  --dir /opt/keycloak/data/import \
  --realm myrealm \
  --users realm_file'
6:docker compose down



