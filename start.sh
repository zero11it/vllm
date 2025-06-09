#!/bin/bash
set -e

if [ -n "${SSL_KEY}" ]; then
  printf '%s' "${SSL_KEY}" > /app/ssl.key
  chmod 600 /app/ssl.key
else
  echo "SSL_KEY environment variable is not set, skipping SSL key file creation."
fi

if [ -n "${SSL_CERT}" ]; then
  printf '%s' "${SSL_CERT}" > /app/ssl.crt
  chmod 644 /app/ssl.crt
else
  echo "SSL_CERT environment variable is not set, skipping SSL certificate file creation."
fi

exec python3 -m vllm.entrypoints.openai.api_server "$@"