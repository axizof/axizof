#!/bin/bash

# Répertoire où vous souhaitez créer les répertoires
base_directory="/var/www/html/hack/"

# Fonction pour générer un nom aléatoire
generate_random_name() {
  echo "$(date +%s%N | sha256sum | base64 | head -c 12)"
}

# Boucle pour créer 500 répertoires
for ((i = 1; i <= 500; i++)); do
  # Génère un nom aléatoire
  random_name=$(generate_random_name)

  # Crée le répertoire avec le nom aléatoire
  mkdir -p "$base_directory/$random_name"
done

echo "500 répertoires ont été créés dans $base_directory."
