FROM nginx:alpine

# Set working directory for clarity (optional but good practice)
WORKDIR /usr/share/nginx/html

# Copy HTML and CSS files
COPY index.html .
COPY style.css .

# Copy full assets folder (fix spelling if needed)
COPY asserts/ asserts/

# Expose port 80
EXPOSE 80

# Run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
    