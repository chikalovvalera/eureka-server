FROM openjdk11
EXPOSE 8761
ADD target/eureka-server.war eureka-server.war
ENTRYPOINT ["java","-jar","/eureka-server.war"]
