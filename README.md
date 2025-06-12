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
   docker exec -it iam_system_0101_gitm-keycloak-1 bash -c '
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
### How to work with ldap

1. **add group/subgroup**
edit the add_group.ldif file to replace the value in cn at the first line to the name of the group you want to create.
In the cn line, put the value of the first cn of the first line.
Do ldapadd -x -D "cn=admin,dc=epita,dc=edu,dc=org" -W -f add_group.ldif

If you want to add a subgroup you have the firssst line has to look like this: dn: cn:<subgroup name>, cn:<group name>,...
2. **add user**

Edit the add_user.ldif file and replace the value in uid with the firstname.lastname of the user you want to add.
In the uid line  put the firstname.lastname.
In the cn line, put the user full name.
In the sn line, put the last name of the user.
In the givenName line, put the first name of the user.
In the email line, put the online mail addres of the user.
Finally, in the userPassword line, put the user password.
Do ldapadd -x -D "cn=admin,dc=epita,dc=edu,dc=org" -W -f add_user.ldif


3. **add user to group**
Edit the add_to_group.ldif file and change, in the dn line, the cn value by the name of the group you wan to add a user into (if you want to add to a subgroup don't forget to add the subgroup and group)
 and , in the member line, replace the uid value by the one of the user you want to add into a group.
Do ldapadd -x -D "cn=admin,dc=epita,dc=edu,dc=org" -W -f add_to_group.ldif
