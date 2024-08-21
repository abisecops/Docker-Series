# Use the official PHP image with Apache
FROM php:8.2-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the application code
COPY . /var/www/html/

# Expose a port (adjust as needed)
EXPOSE 80

# Set the default command
CMD ["apache2-foreground"]
