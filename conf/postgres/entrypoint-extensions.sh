#!/bin/bash

# Load extension on database
echo 'Load Postgres extensions'
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d "$POSTGRES_DB" -f /usr/local/share/postgresql/extension/btree_gist--1.3--1.4.sql
echo '[+] - Loaded btree_gist--1.3--1.4.sql'

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d "$POSTGRES_DB" -f /usr/local/share/postgresql/extension/pg_trgm--1.3--1.4.sql
echo '[+] - Loaded pg_trgm--1.3--1.4.sql'
