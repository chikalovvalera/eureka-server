FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /opt/app
ARG JAR_FILE=target/eureka-server.jar
COPY ${JAR_FILE} eureka-server.jar
ENTRYPOINT ["java","-jar","eureka-server.jar"]
EXPOSE 8761
