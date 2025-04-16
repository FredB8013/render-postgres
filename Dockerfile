FROM postgres:latest

CMD ["postgres"]

ENV POSTGRES_USER=Fredb1380_db
ENV POSTGRES_PASWORD="$Tic@n@350*"
ENV POSTGRES_DB=db_n8n_render_postgres

EXPOSE 5432