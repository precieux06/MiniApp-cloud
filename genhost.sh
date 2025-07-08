bash
#!/bin/bash

# Liste de mots customisables
WORDS=("cyber" "nova" "byte" "orbit" "lunar" "fusion" "storm")

# Nom de domaine de base (modifie selon tes besoins)
DOMAIN="fonts.gstatic.com"

# Boucle pour générer $1 noms d’hôtes
for i in $(seq 1 $1); do
  WORD=${WORDS[$RANDOM % ${#WORDS[@]}]}
  ID=$(uuidgen | cut -c1-5)
  echo "$WORD-$ID.$DOMAIN"
done#!/bin/bash
   WORDS=("storm" "echo" "lunar" "pixel" "orbit" "signal" "matrix")
   DOMAIN="example.com"

   for i in $(seq 1 $1)
   do
     word=${WORDS[$RANDOM % ${#WORDS[@]}]}
     echo "$word.$DOMAIN"
   done

