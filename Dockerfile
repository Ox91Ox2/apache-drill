FROM ubuntu:20.04
ENV NODENAME=nodename1
ENV ZOOKEEPER="localhost:2181"
WORKDIR /opt/apache-drill
RUN apt update
RUN apt upgrade -y
RUN apt install openjdk-8-jdk -y
ADD . /opt/apache-drill/
EXPOSE 8047 8048
ENTRYPOINT [ "/opt/apache-drill/docker-entrypoint.sh" ]
CMD [ "run" ]