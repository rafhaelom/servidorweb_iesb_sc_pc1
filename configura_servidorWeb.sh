#!/bin/bash

# Prova de Conceito 01 - Rafhael de Oliveira Martins
echo "POC 01 IESB - Rafhael de Oliveira Martins"
echo
echo

#PASSO 01
echo "----- [PASSO 01] Atualizando pacotes -----"
apt-get update
apt-get upgrade
echo

#PASSO 02
echo "----- [PASSO 02] Instalando pacote (apache2) -----"
apt-get install -y apache2
echo

#PASSO 03
echo "----- [PASSO 03] Instalando pacote (wget) -----"
apt-get install -y wget
echo

#PASSO 04
echo "----- [PASSO 04] Download do arquivo .zip -----"
wget https://gist.github.com/nunomazer/873219/archive/690e1f604dc8ead2583589e1aee6f8a42040a035.zip
echo

#PASSO 05
echo "----- [PASSO 05] Instalando pacote (zip e unzip) -----"
apt-get install -y zip unzip
echo

#PASSO 06
echo "----- [PASSO 06] Descompactando arquivo .zip -----"
unzip 690e1f604dc8ead2583589e1aee6f8a42040a035.zip
echo

#PASSO 07
echo "----- [PASSO 07] Copiando arquivo descompactado para o diretório (/var/www/html/) -----"
cd 873219-690e1f604dc8ead2583589e1aee6f8a42040a035 
cp * /var/www/html/
echo

#PASSO 08
echo "----- [PASSO 08] Entrando na pasta (/var/www/html/) -----"
cd /var/www/html/
echo

#PASSO 09
echo "----- [PASSO 09] Removendo arquivo index existente na pasta -----"
rm index.html
echo

#PASSO 10
echo "----- [PASSO 10] Renomeando o arquivo (cv-resumido.html para index.html) -----"
mv cv-resumido.html index.html
echo

#PASSO 11
echo "----- [PASSO 11] Iniciando servidor web Apache -----"
/etc/init.d/apache2 start
echo

echo "----- FIM -----"
