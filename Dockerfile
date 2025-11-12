FROM php:8.2-apache
WORKDIR /var/www/html

# Install the PHP extension for MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Copy source into image
COPY ./site/ /var/www/html/

# Optional: if you need apache mods
# RUN a2enmod rewrite

EXPOSE 80