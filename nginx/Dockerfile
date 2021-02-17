FROM alpine

COPY nginx_config /nginx_config
RUN sh nginx_config/nginx_setup.sh

ENTRYPOINT nginx_config/run.sh

EXPOSE 80
