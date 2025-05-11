#!/bin/sh

mkdir -p /opt/.hidden_folder

echo "FLAG{Docker<3}" > /opt/.hidden_folder/.flag.txt

echo "Bienvenue dans le CTF Docker. Explorez le conteneur pour trouver le flag !"
exec /bin/sh
