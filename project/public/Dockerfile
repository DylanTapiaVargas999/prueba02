# Usamos una imagen oficial de PHP como base
FROM php:8.2-cli

# Instalamos las dependencias necesarias para Playwright y PHP
RUN apt-get update && apt-get install -y \
    curl \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    git \
    unzip \
    libx11-xcb-dev \
    libxcb1-dev \
    libdbus-1-3 \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Instalamos Node.js y Playwright (necesario para las pruebas)
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g playwright

# Definimos el directorio de trabajo
WORKDIR /var/www/html

# Copiamos el código de la aplicación al contenedor
COPY . .

# Exponemos el puerto para el servidor PHP
EXPOSE 8000

# Iniciamos el servidor PHP
CMD php -S 0.0.0.0:8000 -t public
