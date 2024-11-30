# Usar la imagen oficial de Node.js
FROM node:18

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos de tu proyecto (asegúrate de que package.json esté incluido)
COPY . .

# Instalar las dependencias
RUN npm install

# Ejecutar las pruebas de Playwright (o lo que necesites)
CMD ["npx", "playwright", "test"]
