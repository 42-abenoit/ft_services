FROM alpine

COPY mysql /mysql
RUN sh mysql/mysql_setup.sh 

ENTRYPOINT sh mysql/run.sh
