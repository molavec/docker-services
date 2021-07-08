# Wordpress en docker

Para simplificar se recomienda utilizar docker compose basado en el siguiente proyecto
https://github.com/visiblevc/wordpress-starter

## ¿Por qué es una buena idea utilizar el proyecto de Vivible VC?

* Simpre se mantiene actualizado
* Permite la fácil configuración de variable de entornos
* Instalación de plugin en un paso
* Utiliza contenedores independientes

## ¿Cómo utlizarlo?

Simplement copia el archivo `wordpress-starter/example/docker-compose.yml` que tiene y lee su documentación el Readme.md de ellos para configuraciones adicionales.

## Nota importante en Mac y Windows para desarrollo

Debido a que el sistemas de archivos es distinto en Mac, Windows y Linux, cuando se monta un volumen (por ejemplo, para externalizar la carpeta de themes o plugins) se demora mucho la carga debido a la conversión de los archivos locales y su traducción al contenedor.

Por esto ser recomienda montar volumenes de archivos compartidos entre el contenedor y el sistema local de la siguiente forma:

```yaml
services:
    wordpress:

        ...

        volumes:
            - ./data:/data
            - ./scripts:/docker-entrypoint-initwp.d
            #- ./wp-content:/app/wp-content
            - type: bind
              source: ./wp-content
              target: /app/wp-content
              consistency: cached
            #- ./php-conf:/usr/local/etc/php
            - type: bind
              source: ./php-conf
              target: /usr/local/etc/php
              consistency: cached
```

Más Info:
https://stackoverflow.com/questions/54291859/docker-wordpress-super-slow/64017979#64017979