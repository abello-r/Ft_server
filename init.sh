#! /bin/bash


echo "\033[32m Iniciando \033"

docker build -t hola .
docker run --name prueba -it -p 80:80 -p 443:443 hola
