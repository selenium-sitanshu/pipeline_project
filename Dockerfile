FROM ubuntu
MAINTAINER Bizdom Technologies
RUN sudo apt-get update
RUN sudo apt-get install -y git maven openjdk-8
RUN mkdir -p /opt
ADD https://downloads.apache.org/tomcat/tomcat-8/v8.5.66/bin/apache-tomcat-8.5.66.tar.gz.asc
RUN sudo tar -xvzf apache*.tar.gz*
RUN mv apache-tomcat* /opt/tomcat8
COPY webapp/target/*.war /opt/tomcat8/webapps/.
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]