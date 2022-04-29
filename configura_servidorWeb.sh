#!/bin/bash

# Prova de Conceito 01 - Rafhael de Oliveira Martins
echo "POC 01 IESB - Rafhael de Oliveira Martins"
echo
echo

#PASSO 01
echo "----- [PASSO 01] Atualizando pacotes -----"
sudo apt-get update
sudo apt-get upgrade
echo

#PASSO 02
echo "----- [PASSO 02] Instalando pacote (apache2) -----"
sudo apt-get install -y apache2
echo

#PASSO 03
echo "----- [PASSO 03] Instalando pacote (wget) -----"
sudo apt-get install -y wget
echo
