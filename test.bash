#!/bin/bash

# Répertoire où vous souhaitez créer les répertoires
base_directory="/var/www/html/hack/"

# Boucle pour créer 500 répertoires
for ((i = 1; i <= 500; i++)); do
  # Génère un nom aléatoire en utilisant uuidgen
  random_name=$(uuidgen)

  # Crée le répertoire avec le nom aléatoire
  mkdir -p "$base_directory/$random_name"
done

echo "500 répertoires ont été créés dans $base_directory."
