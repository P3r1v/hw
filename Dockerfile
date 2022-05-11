FROM alpine:3.14

RUN apk add nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD ./www /www

EXPOSE 8080
CMD ["nginx"]
