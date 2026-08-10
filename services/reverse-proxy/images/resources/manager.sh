#!/usr/bin/env bash

set -euo pipefail

while true; do
	echo "Starting DNS-01 Challenge..."
	./lego run --path /var/lib/lego/ --server $ACME_PROVIDER_NAME --dns yandexcloud --email $ACME_DOMAIN_EMAIL --domains $ACME_DOMAIN_NAME --domains code.$ACME_DOMAIN_NAME --accept-tos

	echo "Sleeping 24 hours..."
	sleep 24h
done
