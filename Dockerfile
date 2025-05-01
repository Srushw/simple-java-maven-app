FROM maven:3.9.4-eclipse-temurin-17 as build
COPY . .
RUN mvn clean install
RUN mvn test


FROM gcr.io/distroless/java17-debian11
WORKDIR /app
COPY --from=build /target/my-app-1.0-SNAPSHOT.jar app.jar
CMD ["app.jar"]

