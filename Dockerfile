# Usar una imagen base de Node.js
FROM node:18

# Crear y establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de tu proyecto a la imagen
COPY . .

# Instalar las dependencias
RUN npm install

# Exponer el puerto en el que tu app estará corriendo
EXPOSE 3000

# Comando por defecto para iniciar la aplicación
CMD ["npm", "start"]
