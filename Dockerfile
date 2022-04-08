FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /opt/app
ARG JAR_FILE=target/eureka-server.war
COPY ${JAR_FILE} eureka-server.war
ENTRYPOINT ["java","-jar","eureka-server.war ru.chikalov.eurekaserver.EurekaServerApplication"]
EXPOSE 8761
