FROM nginx:alpine

# Copy HTML
COPY index.html /usr/share/nginx/html/

# Copy CSS
COPY style.css /usr/share/nginx/html/

# Copy image folder into the same path structure
COPY asserts/img/ /usr/share/nginx/html/asserts/img/

# Expose port 80
EXPOSE 80

# Start NGINX in foreground
CMD ["nginx", "-g", "daemon off;"]
