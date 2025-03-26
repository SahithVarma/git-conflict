# Use OpenJDK 17
FROM eclipse-temurin:17-jdk-jammy


# Set working directory
WORKDIR /app

# Copy pre-renamed JAR file
COPY app.jar app.jar

# Optional: expose a port
EXPOSE 8080

# Run app
ENTRYPOINT ["java", "-jar", "app.jar"]

