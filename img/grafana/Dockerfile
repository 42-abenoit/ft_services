FROM alpine

RUN apk update
RUN apk add grafana
RUN apk add telegraf

COPY /srcs /srcs

RUN mkdir /usr/share/grafana/data
RUN cp /srcs/telegraf.conf /etc/telegraf.conf
RUN cp /srcs/grafana.db /usr/share/grafana/data
RUN cp /srcs/defaults.ini /usr/share/grafana/conf

CMD sh srcs/run.sh

EXPOSE 3000
