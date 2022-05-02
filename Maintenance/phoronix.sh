#!/bin/bash

printf "\e[8;50;53t" &&

echo "" 
echo "         $(tput setaf 0)$(tput setab 9) Début du script d'installation... $(tput sgr0)" &&
sleep 1 &&

echo ""
echo "        $(tput setaf 0)$(tput setab 9) Ajout de ppa pour la version de PHP $(tput sgr0)" &&
echo ""
sleep 1 &&

sudo add-apt-repository ppa:ondrej/php -y


echo ""
echo "                      ✅ OK ✅" &&
sleep 0.5 &&

echo ""
echo "        $(tput setaf 0)$(tput setab 9) Mise à jour de la liste des paquets $(tput sgr0)" &&
echo ""
sleep 1 &&

sudo apt update -y


echo ""
echo "                      ✅ OK ✅" &&
sleep 0.5 &&

echo ""
echo "        $(tput setaf 0)$(tput setab 9) Installation de la version de PHP $(tput sgr0)" &&
echo ""
sleep 1 &&

sudo apt install php5.6 -y

echo ""
echo "                      ✅ OK ✅" &&
sleep 0.5 &&


echo ""
echo "         $(tput setaf 0)$(tput setab 9) Installation de la suite Phoronix $(tput sgr0)" &&
echo ""
sleep 1 &&

sudo dpkg -i phoronix.deb -y

echo ""
echo "                      ✅ OK ✅" &&
sleep 0.5 &&

echo ""
echo ""
echo ""
echo "    $(tput setaf 1)$(tput setab 7) L'installation a été effectuée avec succès $(tput sgr0)" &&
sleep 0.5 &&

echo ""
echo ""
echo "                       👍👍👍"
sleep 4.5 &&
echo ""
echo ""
