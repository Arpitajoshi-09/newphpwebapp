# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy your PHP application code into the container
COPY . /var/www/html

# Install any PHP extensions or packages your application requires
# For example, if you need to install PDO and MySQL support, you can use:
# RUN docker-php-ext-install pdo pdo_mysql

# Expose port 80 for Apache
EXPOSE 80

# Define the command to start the Apache web server
CMD ["apache2-foreground"]
