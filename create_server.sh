#!/bin/bash

echo "Atualizando o sistema..."
apt-get update
apt-get upgrade -y

echo "Instalando o Apache..."
apt-get install apache2 -y

echo "Instalando o unzip..."
apt-get install unzip -y

echo "Baixando os arquivos de 'linux-site-dio' na pasta /tmp"
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando..."
unzip /tmp/main.zip -d /tmp

echo "Copiando o website para /var/www/html"
rm /var/www/html/index.html
cp -Rv /tmp/linux-site-dio-main /var/www/html

echo "Finalizado."
echo "A página web pode ser acessada através do ip abaixo: "
ip a

