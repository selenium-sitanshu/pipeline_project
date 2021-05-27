FROM ubuntu
MAINTAINER Bizdom Technologies
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt install git maven -y
RUN apt-get install openjdk-8-jdk -y
RUN mkdir -p /opt/tomcat
RUN apt-get install -y wget
RUN wget https://downloads.apache.org/tomcat/tomcat-8/v8.5.66/bin/apache-tomcat-8.5.66.tar.gz
RUN tar -xvzf apache-tomcat*
RUN mv ./apache-tomcat* /opt/tomcat
COPY webapp/target/*.war /opt/tomcat/webapps/.
EXPOSE 8080
CMD /opt/tomcat/bin/catalina.sh run
