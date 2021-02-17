FROM alpine

COPY nginx_config /nginx_config
RUN sh nginx_config/nginx_setup.sh

ENTRYPOINT nginx -g "daemon off;"

EXPOSE 80 443
