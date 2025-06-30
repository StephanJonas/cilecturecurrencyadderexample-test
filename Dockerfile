# Use the official PHP image with Apache 
FROM php:8.2-apache 

# Set working directory 
WORKDIR /var/www/html 

# Install required PHP extensions 
RUN docker-php-ext-install pdo pdo_mysql 

# Copy project files into the container 
COPY src /var/www/html 


# Expose port 80 for the Apache server 
EXPOSE 80 

# Start Apache server 
CMD ["apache2-foreground"]
