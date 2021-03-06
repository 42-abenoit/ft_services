FROM alpine

RUN apk update && \
	apk add nginx && \
	apk add openssl && \
	apk add telegraf

COPY nginx_config /nginx_config
RUN sh nginx_config/nginx_setup.sh

CMD sh nginx_config/run.sh

EXPOSE 80 443
