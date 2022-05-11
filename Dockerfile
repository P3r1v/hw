# FROM nginxinc/nginx-unprivileged

# RUN apk add nginx

#ADD nginx.conf /etc/nginx/nginx.conf
#ADD ./www /www

#EXPOSE 8080
#CMD ["nginx"]
FROM alpine:latest

USER root

RUN apk update && \
    apk add nginx && \
    chown -R nginx:www-data /var/lib/nginx

#WORKDIR /etc/nginx
#COPY docker/nginx.conf /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/nginx.conf
ADD www/index.html /var/lib/nginx/html/index.html
#COPY docker/index.html /var/lib/nginx/html/index.html
#COPY docker/50x.html /var/lib/nginx/html/50x.html

RUN chmod -R 755 /var/lib/nginx

EXPOSE 8080
CMD ["/usr/sbin/nginx"]
