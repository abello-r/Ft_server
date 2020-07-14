#!bin/bash

docker rm `docker ps -aq` &>-
docker rmi `docker images -q` &>-
rm -
echo "\033[32mHas eliminado con éxito los contenedores e imagenes\033[0m"
