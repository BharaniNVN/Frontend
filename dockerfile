FROM ubuntu:latest

LABEL author_email=narlavenkatanagabharani@outlook.com

RUN mkdir /opt/tomcat

WORKDIR /opt/tomcat

RUN apt-get update && apt-get install -y curl

CMD /bin/bash

RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.70/bin/apache-tomcat-9.0.70.tar.gz

RUN tar -xf apache-tomcat-9.0.70.tar.gz

RUN mv apache-tomcat-9.0.70/* /opt/tomcat/.

RUN mkdir /opt/tomcat/webapps/myapp
RUN mkdir /opt/tomcat/webapps/myapp2


RUN apt -y  install default-jdk
RUN apt -y  install default-jre
RUN java -version
RUN java -version
RUN DEBIAN_FRONTEND="noninteractive" apt install imagemagick --no-install-recommends -y

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
