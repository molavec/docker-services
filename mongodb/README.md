# MongoDB

Basado en [https://hub.docker.com/_/mongo](https://hub.docker.com/_/mongo)


## How to use

Para usar utlizar

    docker-compose up -d

**Nota:**
Una alternativa es utilizar es levantar el servidor directamente

    docker run -d --name mongodb-docker -p 27017:27017 -v ~/git/docker-services/mongodb/data: data/db mongo

## Nota importante: acerca de los permisos del volumen
Cuando se ejecuta el docker compose desde un script `yarn` o `npm` la carpeta que se crea queda con asociada al `root` por lo que puede que algunas operaciones no se ejecuten apropiadamente.

Para corregir esto cambia el propietario:
```bash
sudo chown user:user -R ~/git/docker-services/mongodb/data
```

## Como acceder

### Desde el contenedor

Simplemente ingresa al contenedor y ejecuta mongo.
```bash
docker-compose exec mongo /bin/bash
container# mongo
```

or con el comando docker:
```bash
docker exec -it [nombre-del-contenedor] /bin/bash
container# mongo
```


### Mediante mongosh

Utilizar `mongosh` que es una interfaz interactiva de Javascript para acceder a MongoDB. 

Para instalar [visita la documentación oficial](https://docs.mongodb.com/mongodb-shell/install/)

To connect:
```bash
mongosh
```
