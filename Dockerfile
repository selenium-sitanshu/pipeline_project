FROM ubuntu
MAINTAINER Bizdom Technologies
RUN apt-get update
RUN apt install git maven -y
RUN apt-get install openjdk-8-jdk -y
RUN mkdir -p /opt/tomcat8
