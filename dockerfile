FROM ubuntu:latest

MAINTAINER narlavenkatanagabharani@outlook.com

RUN mkdir /opt/tomcat

WORKDIR /opt/tomcat

RUN apt-get update && apt-get install -y curl

CMD /bin/bash

RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz

RUN tar xvfz apache-tomcat-9.0.69.tar.gz

RUN mv apache-tomcat-9.0.69/* /opt/tomcat/.

RUN mkdir /opt/tomcat/webapps/myapp

RUN apt -y  install default-jdk
RUN apt -y  install default-jre
RUN java -version
RUN java -version


EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]

