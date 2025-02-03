# Use the official httpd (Apache) image as the base image
FROM httpd:alpine

# Copy the index.html file to the Apache document root
# Assuming index.html is in the same directory as the Dockerfile
COPY ./index.html /usr/local/apache2/htdocs/

# Copy the assets folder to the Apache document root
# Assuming assets/ folder is in the same directory as the Dockerfile
COPY ./assets/ /usr/local/apache2/htdocs/assets/

# Expose port 80 for the HTTP server
EXPOSE 80
