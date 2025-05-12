#  🐳 CTF Docker : "L'Image Docker Cachée"

### 🎯 Objectif

L'objectif de cet exercice est de récupérer un flag caché dans une image Docker. L'exercice vise à te faire comprendre comment interagir avec une image Docker préexistante pour découvrir des informations cachées.

---

### 📝 Contexte

Tu viens de télécharger une **image Docker** contenant un flag caché. L'image a été construite de manière à ce que tu devras exploiter différentes commandes Docker pour trouver ce flag. Il te faudra explorer le système de fichiers et utiliser des techniques d'exploration de Docker pour en obtenir le contenu caché.

---

### 🚀 Instructions

1. **Lancer l'image Docker** :
   Pour ce faire, utilise la commande suivante dans ton terminal :

      ```bash
      docker run -it ibertran/docker-ctf
      ```

2. **Explorer le conteneur pour trouver le flag** :
   Une fois dans le conteneur, tu devras explorer l'environnement du conteneur pour trouver le flag caché.

---

### 💡 Indices

Voici un outil qui pourrait t’aider à localiser le flag caché :

- **`docker inspect`** : Utilise cette commande pour obtenir des informations détaillées sur l'image Docker, comme le point d'entrée (`ENTRYPOINT`), les volumes, et d'autres paramètres de configuration qui pourraient t'aider à trouver des indices.

  ```bash
  docker inspect ibertran/docker-ctf
  ```
