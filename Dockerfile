FROM ubuntu
MAINTAINER Bizdom Technologies
COPY webapp/target/*.war /opt/tomcat8/webapps/.
