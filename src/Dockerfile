# Base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy JAR from Maven or Gradle output
# First try Maven JAR
COPY target/git-conflict-1.0-SNAPSHOT.jar app.jar

# Fallback to Gradle JAR if Maven one isn't available
COPY build/libs/git-conflict-1.0-SNAPSHOT.jar app.jar

# Expose port (optional)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

