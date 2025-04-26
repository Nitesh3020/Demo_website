# Start from a lightweight Nginx image
FROM nginx:alpine

# Copy everything (HTML, CSS, JS, images) into Nginx html folder
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]