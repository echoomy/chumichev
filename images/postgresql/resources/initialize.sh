#!/usr/bin/env bash

set -euo pipefail

psql -X --set ON_ERROR_STOP=1 \
	--username "$POSTGRES_USER" \
	--dbname "$POSTGRES_DB" \
	--set local_user="$LOCAL_USER" \
	--set local_password="$LOCAL_PASSWORD" \
	--set local_db="$LOCAL_DB" <<'EOSQL'
SELECT format('CREATE ROLE %I WITH LOGIN PASSWORD %L', :'local_user', :'local_password')
\gexec
SELECT format('CREATE DATABASE %I OWNER %I', :'local_db', :'local_user')
\gexec
EOSQL
