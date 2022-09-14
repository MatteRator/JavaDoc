# syntax=docker/dockerfile:1
FROM maven:latest

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./

RUN chmod 755 mvnw

RUN ./mvnw dependency:resolve

CMD [mvn]