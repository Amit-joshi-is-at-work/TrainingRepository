# --- Stage 1: Build the application ---
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Copy the build configuration and all source files (includes your index.html)
COPY pom.xml .
COPY src ./src

# Compile the project and package the frontend inside the JAR
RUN mvn clean package -DskipTests

# --- Stage 2: Run the application ---
FROM eclipse-temurin:17-jre
WORKDIR /app

# Pull the final compiled JAR from the build environment
COPY --from=build /app/target/*.jar app.jar

# Expose your application's active port
EXPOSE 8087

# Execute the Spring Boot application directly
ENTRYPOINT ["java", "-jar", "app.jar"]