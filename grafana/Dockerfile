FROM alpine

RUN apk update
RUN apk add grafana
RUN apk add telegraf

COPY telegraf.conf /etc/telegraf.conf
COPY run.sh /run.sh

CMD sh run.sh

EXPOSE 3000
