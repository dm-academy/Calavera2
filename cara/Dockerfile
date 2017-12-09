FROM tomcat:latest
MAINTAINER Charles T. Betz

#Integration with Artifactory
RUN rm -r /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/CalaveraMain.jar
RUN rm -r /usr/local/tomcat/webapps/ROOT/WEB-INF/web.xml
COPY CalaveraMain.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
COPY web.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/ 

RUN chmod 755 /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/CalaveraMain.jar


