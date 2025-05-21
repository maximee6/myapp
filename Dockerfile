# Utiliser une image Node.js LTS comme base
FROM node:18-alpine

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de dépendances et installer
COPY package*.json ./
RUN npm install --only=production

# Copier le reste du code de l'application
COPY . .

# Exposer le port 3000
EXPOSE 3000

# Commande par défaut pour lancer l'app
CMD ["npm", "start"]
