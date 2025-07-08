#!/bin/bash

echo "✨ Bienvenue dans l’application Precieux Okit ✨"
echo "📅 Date du jour: $(date)"
echo "🔁 Génération automatique d’un UUID:"
uuidgen
echo "🌐 Nom d’hôte aléatoire:"
WORDS=("cyber" "fusion" "nova" "orbit" "storm")
w=${WORDS[$RANDOM % ${#WORDS[@]}]}
id=$(uuidgen | cut -c1-5)
echo "$w-$id.fonts.gstatic.com"
