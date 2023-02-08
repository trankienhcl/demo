# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "anhdo15798@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps/myweb.war
#RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
