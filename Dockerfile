# Stage 1: Build the application using a Maven base image
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Copy the pom.xml and source code
COPY pom.xml .
COPY src ./src

# Build the project, skipping tests for faster deployment
RUN mvn clean package -DskipTests

# Stage 2: Create a lightweight image for running the app
FROM eclipse-temurin:17-jre
WORKDIR /app

# Copy the built JAR from the builder stage
COPY --from=build /app/target/kalahaat-backend-spring-0.0.1-SNAPSHOT.jar app.jar

# Expose port (Render overrides this dynamically to the PORT env variable)
EXPOSE 5000

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
