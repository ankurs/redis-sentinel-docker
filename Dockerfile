FROM redis:5

RUN apt-get update
RUN apt-get install supervisor -y

RUN mkdir -p /opt/redis/data1
RUN mkdir -p /opt/redis/data2
RUN mkdir -p /opt/redis/data3
COPY entrypoint.sh /opt/
COPY conf /opt/redis/conf
COPY super.conf /etc/supervisor/conf.d/

CMD ["/opt/entrypoint.sh"]

EXPOSE 7000 7001 7002 5000 5001 5002
