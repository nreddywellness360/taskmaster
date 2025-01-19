# Build Stage
FROM gradle:7.5.1-jdk17 AS build

WORKDIR /app

COPY gradlew gradlew
COPY gradle gradle
COPY build.gradle settings.gradle ./

COPY src src

RUN ./gradlew clean build

# Prod Stage
FROM openjdk:17-jdk-slim

WORKDIR /app

COPY --from=build /app/build/libs/taskmaster-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
