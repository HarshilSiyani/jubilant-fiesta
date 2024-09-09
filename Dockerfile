# Use PHP 8.2 FPM as the base image
FROM php:8.2-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libzip-dev \
    libpq-dev \
    && docker-php-ext-install zip pdo_pgsql

# Set the PHP version in the PATH
ENV PATH="/usr/local/php8.2/bin:${PATH}"
