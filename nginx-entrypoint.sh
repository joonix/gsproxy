#!/bin/bash
set -euo pipefail

# parse templates for environment variables
for t in /etc/nginx/conf.d/*.template; do
    envsubst '$BUCKET,$NAMESERVER' < "$t" > "$t.conf"
done

exec "$@"