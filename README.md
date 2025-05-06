# Atelier Docker : Créer un serveur web Flask et Docker

## Objectif
Cet atelier vous permettra de créer une image Docker pour une application web simple avec Flask, de la lancer, puis de tester un défi supplémentaire en utilisant Docker pour exécuter des commandes d'un autre système d'exploitation. Le fichier python est sur le git.

Le slide: https://docs.google.com/presentation/d/1Ff5k6PXHMKTt3F8NLtrC-7WJuEmwHytNV1LL-BrfygI/edit#slide=id.g350883c3561_0_92

---

## Étapes à suivre

### 1. Créer l'image Docker

1. Créez un fichier **Dockerfile** dans le répertoire de votre projet.
   
2. Essayez de construire cette image afin d'avoir les outils.

3. Lancez votre image !

4. Allez sur pour voir si cela fonctionne.

## Commandes

- docker build -t flask-docker-app .

- docker run -p 5000:5000 --rm flask-docker-app

- docker run --rm flask-docker-app
 

# BONUS

- **Exercice supplémentaire :** Utiliser une image Docker Windows pour exécuter une commande Windows (`dir` ou autre).

## Commandes

- https://docs.docker.com/reference/

- https://www.google.fr/
