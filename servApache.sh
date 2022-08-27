#!/bin/bash

echo "Atualizando o sistema..."
apt-get update

apt-get upgrade -y

echo "Instalando o servidor Apache..."

apt-get install apache2 -y

echo "Iniciando o serviço do Apache..."

systemctl start apache2

echo "Instalando o unzip..."

apt-get install unzip -y

echo "Download e copia da aplicação..."

cd /var/www/html
rm index.html

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -r * /var/www/html/

echo "Servidor Apache instalado com sucesso!"

