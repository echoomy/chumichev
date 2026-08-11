FROM prom/prometheus:v3.13.2

CMD ["--config.file=/etc/prometheus/prometheus.yaml", "--storage.tsdb.path=/prometheus/"]
