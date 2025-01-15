FROM openjdk:17-jdk-alpine
COPY target/taskmaster.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
