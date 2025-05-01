FROM maven:3.9.4-eclipse-temurin-17
COPY . .
RUN mvn clean install
RUN mvn test
