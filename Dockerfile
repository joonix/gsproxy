FROM nginx:stable
MAINTAINER Johnny Bergström <johnny@joonix.se>

RUN rm /etc/nginx/conf.d/default.conf
COPY proxy.template /etc/nginx/conf.d/
COPY nginx-entrypoint.sh /usr/local/bin/

CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT ["/usr/local/bin/nginx-entrypoint.sh"]