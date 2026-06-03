# Build stage: compile the Java application
FROM eclipse-temurin:21-jdk-jammy AS builder
WORKDIR /app
COPY Hello.java /app/
RUN javac Hello.java

# Runtime stage: use a smaller JRE image
FROM eclipse-temurin:21-jre-jammy AS runtime
WORKDIR /app
COPY --from=builder /app/Hello.class /app/

EXPOSE 8080
CMD ["java", "Hello"]