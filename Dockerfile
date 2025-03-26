# Use OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy Maven JAR if it exists
COPY target/git-conflict-1.0-SNAPSHOT.jar app.jar

# Fallback to Gradle JAR if Maven one isn't available
# This won't break if Maven file is missing because Docker uses the last matching copy
COPY build/libs/git-conflict-1.0-SNAPSHOT.jar app.jar

# Expose application port (optional)
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
