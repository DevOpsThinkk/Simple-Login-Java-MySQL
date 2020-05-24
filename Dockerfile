FROM maven:3-jdk-11 as mvn
RUN git clone https://github.com/DevOpsGH/Simple-Login-Java-MySQL.git
RUN cd Simple-Login-Java-MySQL && mvn package


FROM tomcat:10-jdk11
WORKDIR /usr/local/tomcat/webapps
COPY --from=mvn /Simple-Login-Java-MySQL/target/LoginWebApp.war LoginWebApp.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
