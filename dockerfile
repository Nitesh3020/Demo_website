FROM nginx:alpine

# Copy HTML
COPY index.html /usr/share/nginx/html/

# Copy CSS from project root (not from assets/)
COPY style.css /usr/share/nginx/html/

# Copy product images from assets/img
COPY assets/img/product*.jpg /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
