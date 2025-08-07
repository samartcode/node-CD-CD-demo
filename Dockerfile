# Utilizamos la imgane oficial de Node.js desde DockerHub(es como el npm de docker)
FROM node:20

# Establecemos el directorio donde se instalaran los archivos
WORKDIR /app

# Copiamos los archivos de dependencias primero para aprovechar cache de Docker
# Porque asi si no hay cambios en el package.json, no debe volver a copiarlo y a instalar las dependencias
COPY package*.json ./
RUN npm install

# Ahora copiamos el resto del proyecto
COPY . .

# Expone el puerto interno de la app
Expose 3000

# Inicia la aplicacion
CMD ["node", "app.js"]