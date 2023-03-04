#!/bin/bash

# wait for postgres to be ready
until pg_isready --host=db --username=odoo; do
  echo "Waiting for PostgreSQL to be ready..."
  sleep 1
done

exec "$@"