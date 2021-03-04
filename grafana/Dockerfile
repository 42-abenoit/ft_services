FROM alpine

RUN apk update
RUN apk add grafana

CMD cd /usr/share/grafana && grafana-server

EXPOSE 3000
