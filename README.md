# IAM_System_0101_GITM

## Keycloak Admin Access (IAM Project)

### Steps to Connect and Work with Keycloak

1. **Start the Keycloak system using Docker Compose**  
   ```bash
   docker compose up -d
   ```

2. **Import configuration into Keycloak**  
   ```bash
   docker exec -it iam_system_0101_gitm-keycloak bash -c '
   /opt/keycloak/bin/kc.sh import --dir=/opt/keycloak/data/import
   '
   ```

3. **Access the Keycloak admin interface**  
   Open your browser and go to:  
   [http://localhost:8180/auth](http://localhost:8180/auth)

4. **Perform your admin operations**  

5. **Export configuration from Keycloak**  
   ```bash
   docker exec -it iam_system_0101_gitm-keycloak bash -c '
   /opt/keycloak/bin/kc.sh export \
     --dir /opt/keycloak/data/import \
     --realm EPITA \
     --users realm_file
   '
   ```

6. **Shut down the Keycloak system**  
   ```bash
   docker compose down
   ```
