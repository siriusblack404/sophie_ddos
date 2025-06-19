#!/bin/bash

clear
echo -e "\e[1;31m"
cat << "EOF"
   _____       _     _           
  / ____|     | |   (_)          
 | (___   ___ | |__  _ _ __  ___ 
  \___ \ / _ \| '_ \| | '_ \/ __|
  ____) | (_) | |_) | | | | \__ \
 |_____/ \___/|_.__/|_|_| |_|___/
EOF
echo -e "\e[0m"
echo -e "🤖 Bonjour, je suis \e[1;35mSophie\e[0m, l'assistante du PirateGA !"

# Demander autorisation d'installation
read -p "📦 Voulez-vous installer les outils nécessaires (g++, openssl, etc.) ? (y/n): " install
if [[ "$install" == "y" || "$install" == "Y" ]]; then
    echo -e "\n🔧 Mise à jour et installation des paquets requis...\n"
    sudo apt update && sudo apt install g++ libssl-dev build-essential -y
else
    echo -e "❌ Installation annulée. Fin du script."
    exit 1
fi

echo -e "\n✅ Installation terminée."
sleep 1

# Demander si exécution de l'outil
read -p "⚔️  Souhaitez-vous lancer l'outil de simulation de piratage ? (y/n): " execute
if [[ "$execute" == "y" || "$execute" == "Y" ]]; then

    # Donner les droits d'exécution
    chmod +x ./sophie

    read -p "⚠️  Tu veux vraiment exécuter la simulation sur cette machine avec persistance root ? (y/n): " confirm
    if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
        echo -e "\n🚀 Lancement avec droits root...\n"
        sudo ./sophie
    else
        echo -e "\n🔒 Mode sans persistance activé."
        ./sophie
    fi
else
    echo -e "🕊️  Aucun outil lancé. À bientôt !"
fi
