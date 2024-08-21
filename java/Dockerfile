# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file (assumes a build system will place it here)
COPY *.jar /app/app.jar

# Expose a port (adjust as needed)
EXPOSE 8080

# Set the default command (adjust if necessary)
CMD ["java", "-jar", "app.jar"]
