FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/*.war eureka-server.war
EXPOSE 8761
CMD ["java", "-jar", "/eureka-server.war"]
