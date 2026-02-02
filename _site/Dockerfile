FROM alpine:latest

RUN apk update
RUN apk add nginx

RUN mkdir /www

RUN mv /etc/nginx/http.d/default.conf /etc/nginx/http.d/default.conf.orig

COPY ./conf.d/default.conf /etc/nginx/http.d/default.conf

WORKDIR /www

COPY ./_site /www

EXPOSE 80 443

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
