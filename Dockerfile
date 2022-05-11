FROM alpine:3.14

RUN apt-get update
RUN apt-get install -y nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD ./www /www

EXPOSE 8080
CMD ["nginx"]
