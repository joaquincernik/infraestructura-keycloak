# Infraestructura del trabajo
Se presenta la siguiente infraestructura de despliegue
```
.
├── README.md
├── backup-keycloak
│   └── edu-spring-realm-export.json
├── deployFront.sh
├── docker-compose.yml
├── dump-mysql
│   ├── integrador_alarms.sql
│   ├── integrador_camiones.sql
│   ├── integrador_choferes.sql
│   ├── integrador_clientes.sql
│   ├── integrador_conciliaciones.sql
│   ├── integrador_datos_carga.sql
│   ├── integrador_datos_carga_header.sql
│   ├── integrador_detalles.sql
│   ├── integrador_ordenes.sql
│   ├── integrador_productos.sql
│   ├── integrador_roles.sql
│   ├── integrador_sisternas.sql
│   ├── integrador_userroles.sql
│   └── integrador_users.sql
├── front
│   └── dist
├── mysqlinit
│   ├── grants.sql
│   ├── integrador_alarms.sql
│   ├── integrador_camiones.sql
│   ├── integrador_choferes.sql
│   ├── integrador_clientes.sql
│   ├── integrador_conciliaciones.sql
│   ├── integrador_datos_carga.sql
│   ├── integrador_datos_carga_header.sql
│   ├── integrador_detalles.sql
│   ├── integrador_ordenes.sql
│   ├── integrador_productos.sql
│   ├── integrador_roles.sql
│   ├── integrador_sisternas.sql
│   ├── integrador_userroles.sql
│   └── integrador_users.sql
├── nginx
│   ├── default.conf
│   └── default.conf.save
├── snippet.sh
├── themes-keycloak
│   ├── META-INF
│   ├── README.md
│   ├── mi-tema
│   ├── org.keycloak.keycloak-themes-26.5.6.jar
│   ├── tema-custom
│   └── theme
└── tomcat
    ├── bin
    ├── conf
    └── webapps

# Backup del realm
Para exportar el realm se ejecuto el siguiente comadno
```docker exec -it keycloak /opt/keycloak/bin/kc.sh export --realm edu-spring-realm-dev --file /opt/keycloak/edu-spring-realm-export.json```

El archivo de backup fue copiado dentro de la carpeta `backup-keycloak`
```
backup-keycloak/
└── edu-spring-realm-export.json
```


# Configuracion del ambiente de docker
Se presenta el siguiente archivo `.env.enxample`, el cual tendra que ser modificado con las credenciales correctas en un arcihvo `.env` a la hora de correr el contenedor
```
TZ=America/Buenos_Aires
MYSQLROOTPWD=password
MYSQLPWD=password
KEYCLOAK_ADMIN=admin
KEYCLOAK_ADMIN_PASSWORD=admin
KC_DB_USERNAME=user
```
Adentro de la carpeta de backup tambien se encuentra un archivo `.env.example` en el cual explica el nombre de la variable en el cual se debe ingresar el id y el secret de google 
```
GOOGLE_CLIENT_ID=id
GOOGLE_CLIENT_SECRET=secret
```

# Ejecucion del import
Se puede hacer mediante el comando
```docker exec -it keycloak /opt/keycloak/bin/kc.sh import --file /opt/keycloak/data/import/realm-import.json```

O modificando el `docker-compose.yml`
```services:
  keycloak:
    # ...
    volumes:
      - ./imports:/opt/keycloak/data/import
    command: start-dev --import-realm
```


Luego ejecutar el docker realizando  `docker compose up -d`
