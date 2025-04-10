# Use the official NGINX image as the base image
FROM nginx:latest

# Set the working directory to NGINX's default HTML directory
WORKDIR /usr/share/nginx/html

# Copy the custom HTML file to the container
COPY index.html index.html

# Expose port 80 to allow external access
EXPOSE 80

# Start the NGINX server
CMD ["nginx", "-g", "daemon off;"]
