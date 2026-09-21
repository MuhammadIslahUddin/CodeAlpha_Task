# Use Nginx as base
FROM nginx:latest

# Copy your website files into the container
COPY . /usr/share/nginx/html/

# Expose web port
EXPOSE 80

