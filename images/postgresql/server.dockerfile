FROM postgres:18.4

COPY ./resources/initialize.sh /docker-entrypoint-initdb.d/initialize.sh
