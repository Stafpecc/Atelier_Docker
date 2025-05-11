#  🐳 CTF Docker : "L'Image Docker Cachée"

### 🎯 Objectif

L'objectif de cet exercice est de récupérer un flag caché dans une image Docker. L'exercice vise à te faire comprendre comment interagir avec une image Docker préexistante pour découvrir des informations cachées.

---

### 📝 Contexte

Tu viens de télécharger une **image Docker** contenant un flag caché. L'image a été construite de manière à ce que tu devras exploiter différentes commandes Docker pour trouver ce flag. Il te faudra explorer le système de fichiers et utiliser des techniques d'exploration de Docker pour en obtenir le contenu caché.

---

### 🚀 Instructions

1. **Construire et lancer l'image Docker** :
   - Utilise le Dockerfile dans le répertoire courant pour construire et lancer l'image Docker.

   Pour ce faire, utilise les commandes suivantes dans ton terminal :

   1. **Construire l'image Docker** :
      ```bash
      docker build -t docker-ctf .
      ```

   2. **Lancer l'image Docker** dans un conteneur interactif :
      ```bash
      docker run -it docker-ctf
      ```

2. **Explorer le conteneur pour trouver le flag** :
   Une fois dans le conteneur, tu devras explorer l'environnement du conteneur pour trouver le flag caché. Voici quelques pistes pour t'aider à progresser dans la recherche.

---

### 🚨 Contrainte importante

**Tu peux voir le flag dans le script `.sh` (par exemple, `entrypoint.sh`), mais il est strictement interdit d'y aller directement**, idem pour le sous-dossier solutions. Tu devras utiliser des techniques d'exploration du conteneur pour découvrir où il est caché, sans ouvrir ce fichier directement.

---

### 💡 Indices

Voici quelques outils et stratégies qui pourraient t’aider à localiser le flag caché :

- **`docker inspect`** : Utilise cette commande pour obtenir des informations détaillées sur l'image Docker, comme le point d'entrée (`ENTRYPOINT`), les volumes, et d'autres paramètres de configuration qui pourraient t'aider à trouver des indices.

  Exemple de commande :
  ```bash
  docker inspect docker-ctf
