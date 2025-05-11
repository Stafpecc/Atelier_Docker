# 🐳 Exercice 3 : "Docker Windows"

## 🎯 Objectif

Utiliser une image Docker Windows pour exécuter une commande Windows (comme ```dir```, ```rmdir``` , etc.).

---

## ⚙️ Pré-requis

- Docker Desktop installé sur Windows
- Docker configuré pour utiliser des containers Windows (mode Windows Containers)

---

## 📦 Commandes Docker utiles

- docker pull : pour récupérer une image  
- docker run : pour exécuter un conteneur  
- docker images : pour lister les images  
- docker ps -a : pour lister les conteneurs  

Consulter la documentation officielle : [Docker CLI Reference](https://docs.docker.com/reference/)

---

## 🛠️ Étapes

1. Basculer Docker en mode Windows Containers :  
   Clic droit sur l’icône Docker dans la barre système puis sélectionner "Switch to Windows containers".

2. Télécharger une image Windows :  
   Exemple : ```mcr.microsoft.com/windows/servercore:ltsc2022```

3. Lancer un conteneur et exécuter une commande Windows :  
   Exemples :
   - ```cmd /c dir``` pour afficher le contenu du répertoire
   - ```cmd /c "echo Hello from Windows container"``` pour afficher un message

---

## 🔍 Liens utiles

- [Documentation Docker](https://docs.docker.com/reference/)  
- [Google](https://www.google.fr/)

---

## ✅ Résultat attendu

L’exécution correcte d’une commande Windows dans un conteneur Windows, avec un affichage correspondant dans le terminal.

---

## 🧠 Conseils

- Utilise l’option ```--rm``` pour supprimer automatiquement le conteneur après l’exécution.  
- Tu peux tester d’autres commandes comme ```ipconfig```, ```whoami```, ```hostname```, etc.
