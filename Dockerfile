FROM nginx:alpine

COPY ./ /var/www/sawert.se

# Symlink configuration.
RUN ln -s /var/www/sawert.se/nginx.conf /etc/nginx/conf.d/01-sawert.se.conf

# Run nginx
CMD ["nginx", "-g", "daemon off;"]
