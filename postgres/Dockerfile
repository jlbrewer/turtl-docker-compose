#Postgres server container for serving Turtl/NodeJS, locked down to Docker internal network. Edit internal IP address as needed
FROM postgres:11.1
LABEL description="Postgres Server hosting the Turtl database"
LABEL maintainer="jlbrewer@theminstream.net"

#Backups
RUN mkdir /scripts
COPY pgdump.sh /scripts/
RUN mkdir /backups
VOLUME /backups

#init turtl database
COPY create-turtl-db.sh /docker-entrypoint-initdb.d
RUN chmod +x /docker-entrypoint-initdb.d/create-turtl-db.sh

CMD "echo" "Starting PostgresSQL database for Turtl..."
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres"]
