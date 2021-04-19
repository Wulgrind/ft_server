FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install openssl

COPY srcs ./root/

WORKDIR /root/

ENTRYPOINT ["bash", "start.sh"]
