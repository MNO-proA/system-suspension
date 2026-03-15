# Use lightweight NGINX image
FROM nginx:alpine

# Remove default NGINX content
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]