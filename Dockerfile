FROM node:18-alpine
LABEL autor="josue.castilloh@axity.com"
WORKDIR /app

# Restaurar archivos NodeJS
COPY app/yarn.lock app/package.json ./
RUN npm install --omit dev
COPY app/spec ./spec
COPY app/src ./src

#Ejecutar Node
CMD node src/index.js
EXPOSE 3000