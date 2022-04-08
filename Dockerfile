FROM adoptopenjdk/maven-openjdk11:latest
WORKDIR /app
COPY . /app
RUN mvn package
EXPOSE 8761
CMD ["mvn", "spring-boot:run"]
