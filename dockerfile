FROM nginx:alpine

COPY index.html /usr/share/nginx/html/
COPY assets/style.css /usr/share/nginx/html/
COPY assets/product*.jpg /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
