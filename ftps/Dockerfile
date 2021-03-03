FROM alpine

COPY ftp /ftp
RUN	sh ftp/ftp_setup.sh

ENTRYPOINT sh ftp/run.sh

EXPOSE 20 21 21000-21003
