FROM maven:3.9.4-eclipse-temurin-8-alpine
COPY . .
RUN mvn clean install
RUN mvn test
