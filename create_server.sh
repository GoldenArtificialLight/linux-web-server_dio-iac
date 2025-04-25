#!/bin/bash

echo -n "\n\nAtualizando o sistema...\n\n"
apt-get update
apt-get upgrade -y

echo -n "\n\nInstalando o Apache...\n\n"
apt-get install apache2 -y

echo -n "\n\nInstalando o unzip...\n\n"
apt-get install unzip -y

echo -n "\n\nBaixando os arquivos de 'linux-site-dio' na pasta /tmp\n\n"
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo -n "\n\nDescompactando...\n\n"
unzip /tmp/main.zip -d /tmp

echo -n "\n\nCopiando o website para /var/www/html\n\n"
rm /var/www/html/index.html
cp -Rv /tmp/linux-site-dio-main /var/www/html

echo -n "\n\nFinalizado.\n\n"
echo -n "\n\nA página web pode ser acessada através do ip abaixo: \n"
ip a

