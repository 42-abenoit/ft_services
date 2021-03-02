FROM alpine

COPY wordpress_config /wordpress_config
RUN sh wordpress_config/wordpress_setup.sh

ENTRYPOINT sh wordpress_config/run.sh

EXPOSE 5050
