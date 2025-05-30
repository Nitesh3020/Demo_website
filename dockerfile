FROM nginx:alpine

# Set working directory for NGINX default content
WORKDIR /usr/share/nginx/html

# Copy HTML and CSS
COPY index.html .
COPY style.css .

# Copy image assets (folder renamed from "asserts" to "assets")
COPY asserts/ ./asserts/

# Expose HTTP port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
