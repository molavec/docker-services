#tmp_proyecto6 (alias perritas sufriendo con mysql)

Proyecto de ejemplo para manejo con base de datos con node.js

## Ejecución

    npm install #para instalar las dependencias
    node server.js

## Como utilizar

En el navegador abre el siguiente enlace

http://localhost:3000/

Ingresar en el formulario

    User: perrita@perrita.cl
    Pass: perrita

## Utilizando Docker mysql

Es posible utilizar un contenedor docker para montar una base de datos mysql.
Para utilizar docker realizar los siguientes pasos:

1.- Instalar docker:

Ubuntu:
https://docs.docker.com/engine/installation/linux/ubuntu/

Mac:
https://docs.docker.com/docker-for-mac/

2.- Intalar docker compose (Ayuda a levantar un contenedor docker desde un
archivo docker-compose.yml)

https://docs.docker.com/compose/install/

3.- Ejecutar el contenerdor docker.

Desde la raíz del proyecto ejecutar

    docker-compose up -d

**Nota:** Debes esperar un minuto para que se inicie el contenedor docker.

Esto leventará un contenedor docker con un servidor mysql. Para comprobar
utilizar:

    docker-compose ps

4.- Cargar la base de datos en el contenedor (pass: perrita)

    mysql -h 127.0.0.1 -P 3306 -u root -p  < database.sql

**Nota:** Debes tener instalado el cliente mysql en tu computador

5.- Bonus: Para conectarse a la base de datos (pass: perrita):

    mysql -h 127.0.0.1 -P 3306 -u root -p  tmp_proyecto6

