#Загрузить базовый образ Ubuntu 18.04
FROM ubuntu:18.04

#Обновить программный репозиторий Ubuntu
RUN apt-get update

#Установить nginx
RUN apt-get install -y nginx

#Определение переменных среды
#ENV nginx_conf /etc/nginx/nginx.conf

#Конфигурация тома
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

#Порты для nginx
EXPOSE 80 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
