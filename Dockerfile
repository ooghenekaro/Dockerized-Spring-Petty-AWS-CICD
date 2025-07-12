FROM maven:3.9.10-eclipse-temurin-17

WORKDIR /app

RUN apt update && apt install -y nano curl

COPY . .
RUN mvn clean install

ENTRYPOINT java -jar target/*.jar
