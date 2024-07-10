FROM ubuntu:latest
RUN apt-get update && apt-get install -y squid
COPY squid.conf /etc/squid/squid.conf
CMD ["squid", "-N"]