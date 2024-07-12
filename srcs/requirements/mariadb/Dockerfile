FROM debian:buster

RUN apt-get update && \
    apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/ /tmp/

EXPOSE 3306

RUN chmod +x /tmp/db_script.sh

ENTRYPOINT [ "/tmp/db_script.sh" ]

CMD [ "mysqld" ]
