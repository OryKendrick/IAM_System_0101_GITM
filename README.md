# IAM_System_0101_GITM
IAM project

connexion to Keycloak admin: 
1: docker compose up -d
2: docker run --name keycloak -v /path/to/export:/opt/keycloak-data/import \
  quay.io/keycloak/keycloak:latest start --import-realm #This imports all JSON (holding Keycloak configuration) files found in /opt/keycloak-data/import on startup.
3:Go to http://localhost/auth
4: do what you need to do
5:docker exec -it iam_system_0101_gitm-keycloak-1 /opt/keycloak/bin/kc.sh import --dir /opt/keycloak-data/import --file myrealm.json #import current keycloak setup.
6:docker compose down.



