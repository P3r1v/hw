FROM nginxinc/nginx-unprivileged

# RUN apk add nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD ./www /www

EXPOSE 8080
CMD ["nginx"]
