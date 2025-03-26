# Use OpenJDK 17
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy pre-renamed JAR file
COPY app.jar app.jar

# Optional: expose a port
EXPOSE 8080

# Run app
ENTRYPOINT ["java", "-jar", "app.jar"]

