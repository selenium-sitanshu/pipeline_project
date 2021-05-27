FROM ubuntu
MAINTAINER Bizdom Technologies
RUN sudo apt-get update
RUN sudo apt install git maven -y
RUN sudo apt-get install openjdk-8-jdk -y
RUN sudo mkdir -p /opt/tomcat8
