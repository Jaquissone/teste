FROM tomcat:9-jdk11

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY var-www-vukamz.com/dhis.war.1  /usr/local/tomcat/webapps/ROOT.war

COPY var-www-vukamz.com/config/dhis.conf  /opt/dhis2/config/dhis.conf


RUN echo "export JAVA_OPTS=$JAVA_OPTS\nexport DHIS2_HOME='/opt/dhis2/config'" >> /usr/local/tomcat/bin/startup.sh
 

