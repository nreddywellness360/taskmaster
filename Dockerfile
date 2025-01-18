# Use an OpenJDK image as the base
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy only the Gradle and configuration files to cache dependencies
COPY build.gradle settings.gradle gradlew gradlew.bat /app/
COPY gradle /app/gradle

# Ensure gradlew has execute permissions
RUN chmod +x gradlew

# Download Gradle dependencies
RUN ./gradlew dependencies --no-daemon || true

# Copy the rest of the project files into the container
COPY . /app

# Build the project
RUN ./gradlew build --no-daemon

# Expose the default application port
EXPOSE 8080

# Set the entry point to run the application
CMD ["java", "-jar", "build/libs/taskmaster-0.0.1-SNAPSHOT.jar"]
