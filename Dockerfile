# Base image
FROM openjdk:17-jdk-alpine

# Working directory
WORKDIR /app

# Copy the source code from host machine to the container
COPY src/Main.java /app/Main.java

# Compile the Java code
RUN javac Main.java

# Run the Java application when the container starts
CMD ["java", "Main"]
