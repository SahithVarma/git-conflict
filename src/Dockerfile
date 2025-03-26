# Start with a base Java image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy your built JAR into the image
COPY target/git-conflict-1.0-SNAPSHOT.jar app.jar

# Set the startup command
ENTRYPOINT ["java", "-jar", "app.jar"]


# Use a lightweight OpenJDK 17 image
FROM openjdk:17-jdk-slim

# Set work directory inside container
WORKDIR /app

# Copy the built JAR file
COPY build/libs/git-conflict-1.0-SNAPSHOT.jar app.jar

# Expose app port (optional, if your app listens on 8080)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
