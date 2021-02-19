FROM alpine

COPY pma_config /pma_config
RUN sh /pma_config/pma_setup.sh

ENTRYPOINT sh pma_config/run.sh

EXPOSE 80
