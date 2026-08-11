FROM prom/node-exporter:v1.12.1

CMD ["--web.listen-address=:8080", "--path.rootfs=/host/"]
