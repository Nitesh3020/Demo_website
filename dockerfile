FROM nginx:alpine

# Copy HTML
COPY index.html /usr/share/nginx/html/

# Copy CSS
COPY style.css /usr/share/nginx/html/

# Copy all product images
COPY asserts/img/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
