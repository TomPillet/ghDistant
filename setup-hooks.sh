#!/bin/bash
# Script d'installation des hooks Git

# Chemin du dossier des hooks partagés
HOOKS_DIR="hooks"

# Chemin du dossier des hooks locaux de Git
GIT_HOOKS_DIR=".git/hooks"

# Copier chaque hook du dossier partagé vers le dossier des hooks de Git
echo "Installation des hooks Git..."
for hook in "$HOOKS_DIR"/*; do
    hook_name=$(basename "$hook")
    echo "Copie de $hook_name dans $GIT_HOOKS_DIR/"
    cp "$hook" "$GIT_HOOKS_DIR/$hook_name"
    chmod +x "$GIT_HOOKS_DIR/$hook_name"
done

echo "Les hooks Git ont été installés avec succès."
