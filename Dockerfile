FROM postgres:latest

RUN apt-get update && apt-get install -y netcat-traditional

# Copie du script d’entrée
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 5432
EXPOSE 80

CMD ["/entrypoint.sh"]