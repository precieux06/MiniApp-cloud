#!/bin/bash

clear
echo -e "\e[1;34m╔════════════════════════════════════╗"
echo -e "║   🔥 PRECIEUX OKIT v3 PRO 🔥     ║"
echo -e "╚════════════════════════════════════╝\e[0m"
echo ""
echo -e "\e[1;32m[1]\e[0m Générer Payload HTTP"
echo -e "\e[1;32m[2]\e[0m Générer IP Publique"
echo -e "\e[1;32m[3]\e[0m Générer Hostname international"
echo -e "\e[1;32m[4]\e[0m Scanner Accessibilité (ping test)"
echo -e "\e[1;31m[0]\e[0m Quitter"
echo ""

read -p "👉 Choix: " choix

case "$choix" in
  1)
    echo ""
    echo "🔧 Payload HTTP généré:"
    echo "------------------------"
    echo "Host: bughost.net"
    echo "GET / HTTP/1.1"
    echo "X-Forwarded-For: $(curl -s https://api64.ipify.org)"
    echo "Connection: keep-alive"
;;
  2)
    echo ""
    echo "🌐 IP Publique:"
    echo "----------------"
    curl -s https://api64.ipify.org
;;
  3)
    echo ""
    echo "🌍 Hostname aléatoire:"
    echo "------------------------"
    prefixes=("cdn" "edge" "fastly" "assets" "gateway" "geo")
    domain="gstatic.com"
    rand=${prefixes[$RANDOM % ${#prefixes[@]}]}
    code=$(uuidgen | cut -c1-6)
    echo "${rand}-${code}.${domain}"
;;
  4)
    echo ""
    echo "📡 Scan réseau de google.com..."
    ping -c 1 google.com | grep 'bytes from' || echo "❌ Injoignable"
;;
  0)
    echo "🚪 Fermeture de Precieux Okit. À bientôt!"
    exit 0
;;
  *)
    echo "⛔ Option invalide."
;;
esac
