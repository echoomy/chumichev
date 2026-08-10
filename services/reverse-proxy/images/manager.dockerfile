FROM goacme/lego:v5.3.1

COPY ./resources/manager.sh ./entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
