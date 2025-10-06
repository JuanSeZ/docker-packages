FROM nginx:alpine
COPY script.sh /usr/share/nginx/html/script.sh
RUN echo '<html><body><h1>This is working fine!</h1><p>Custom echo image from ghcr.io/juansez/echo</p></body></html>' > /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
