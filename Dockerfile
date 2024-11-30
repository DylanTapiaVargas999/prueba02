# Usar la imagen oficial de Playwright
FROM mcr.microsoft.com/playwright:v1.28.0-focal

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos del proyecto (asegúrate de que esté el archivo package.json)
COPY . .

# Instalar las dependencias
RUN npm install

# Ejecutar las pruebas de Playwright
CMD ["npx", "playwright", "test"]
