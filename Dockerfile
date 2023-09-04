FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y nginx
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]
COPY result.html /var/www/html/index.html
EXPOSE 80
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
