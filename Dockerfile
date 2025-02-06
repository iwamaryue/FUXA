# Utiliser l'image Node.js 14
FROM node:14

# Définir le répertoire de travail
WORKDIR /usr/src/app

# Cloner votre fork de FUXA
RUN git clone https://github.com/iwamaryue/FUXA.git
WORKDIR /usr/src/app/FUXA

# Installer les dépendances du serveur
WORKDIR /usr/src/app/FUXA/server
RUN npm install

# Ajouter les fichiers de votre projet
ADD . /usr/src/app/FUXA

# Définir le répertoire de travail
WORKDIR /usr/src/app/FUXA/server

# Exposer le port 1881
EXPOSE 1881

# Démarrer le serveur
CMD ["npm", "start"]

