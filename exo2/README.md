# 🐳 Exercice 2 : "Prison Break (SSH)"

### 🎯 Objectifs

- Créer une image Docker personnalisée à partir d’Ubuntu
- Installer et configurer un service (SSH) dans un conteneur
- Exposer un port et se connecter au conteneur depuis l’extérieur
- Comprendre la séparation entre le conteneur et l’hôte
- Réaliser quelque chose impossible sur les machines 42 sans sudo

---

### 📦 Consignes

Créer un conteneur Docker basé sur **Ubuntu** dans lequel tourne un serveur **SSH** fonctionnel. Ce conteneur doit :

- Être construit via un **Dockerfile**
- Créer un utilisateur nommé `docker` avec le mot de passe `docker`
- Installer et démarrer le service `sshd`
- Exposer le port `22` (redirigé en `2222` sur l’hôte)
- Permettre à l’utilisateur de se connecter via SSH en local

---

### 🛠 Étapes recommandées

1. **Crée un fichier `Dockerfile` avec les instructions nécessaires** :
   - Base Ubuntu
   - Installation de `openssh-server`
   - Création de l’utilisateur `docker`
   - Setup du service SSH

2. **Construis l’image** avec la commande suivante :

   ```bash
   docker build -t ssh-container .```

3. **Lance le conteneur** avec le port forwarding pour exposer le port SSH (22) sur le port 2222 de l'hôte :

    ```bash
    docker run -d -p 2222:22 ssh-container```

4. **Teste** la connexion SSH depuis l’hôte :

    ```bash
    ssh docker@localhost -p 2222```

---

### 🔑 Mot de passe : `docker`

---

### ✅ Critères de validation

- Un **Dockerfile** propre et fonctionnel
- L’image se construit sans erreur
- Le conteneur tourne en arrière-plan (`docker ps`)
- Connexion SSH réussie depuis l’extérieur du conteneur
- L’utilisateur `docker` existe bien dans le conteneur

---

### ⚠️ Contraintes

- **Ne pas utiliser** d’image avec `sshd` préinstallé (pas de `rastasheep/ubuntu-sshd` par exemple)
- **Ne pas utiliser** de Docker Compose
- Utiliser uniquement **Dockerfile** et **ligne de commande Docker**

---

### 🌟 Bonus

- Connexion via **clé SSH** plutôt que mot de passe
- Utilisation d’un **volume Docker** pour persister les fichiers `/home/docker`
- Afficher un message personnalisé à la connexion (via `motd`)

