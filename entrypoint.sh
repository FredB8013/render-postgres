#!/bin/bash

# Lancer PostgreSQL en arrière-plan
docker-entrypoint.sh postgres &

# Simuler un faux serveur HTTP
while true; do
  echo -e 'HTTP/1.1 200 OK\n\nHello from fake HTTP server' | nc -l -p 80
done