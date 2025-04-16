FROM postgres:latest

# Installer netcat pour simuler un serveur HTTP
RUN apt-get update && apt-get install -y netcat

# Exposer les ports
EXPOSE 5432
EXPOSE 80

# Démarrer Postgres + faux serveur HTTP via un script de lancement
CMD ["sh", "-c", "docker-entrypoint.sh postgres & while true; do echo -e 'HTTP/1.1 200 OK\n\nHello' | nc -l -p 80; done"]