FROM debian:bookworm

RUN apt -y update && apt -y upgrade
RUN apt -y install mariadb-server
COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/init.sh /tmp/init.sh
RUN chmod +x /tmp/init.sh
CMD ["/tmp/init.sh"]
