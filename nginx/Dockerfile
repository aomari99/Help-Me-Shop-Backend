FROM nginx:1.19.0-alpine

RUN mkdir /DJangoAPI
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/
COPY localhost.crt /etc/ssl/
COPY localhost.key /etc/ssl/

WORKDIR /DJangoAPI
