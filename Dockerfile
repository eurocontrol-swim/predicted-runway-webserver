FROM nginx:1.20.2

COPY secure-nginx.conf /etc/nginx/nginx.conf
COPY proxy_params /etc/nginx/proxy_params

RUN mkdir /etc/nginx/ssl
RUN chown -R www-data:www-data /etc/nginx/ssl

RUN touch /var/run/nginx.pid && \
  chown -R www-data:www-data /var/run/nginx.pid && \
  chown -R www-data:www-data /var/cache/nginx

USER www-data