#!/bin/bash

export PGPASSWORD='password'

database="monstersdb"

echo "Configuring database: $database"

dropdb -U node_user -p 2627  monstersdb
createdb -U node_user -p 2627 monstersdb

psql -U node_user -p 2627  monstersdb < ./bin/sql/monsters.sql

echo "$database configured"


