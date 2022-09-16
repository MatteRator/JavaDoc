# syntax=docker/dockerfile:1
FROM ubuntu AS stage

FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

#RUN apt-get update && apt-get install dos2unix

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN chmod 755 mvnw
#RUN spring-javaformat:apply
#RUN find . -type f -print0 | xargs -0 dos2unix
#RUN dos2unix ./app/src/
#RUN dos2unix ./mvnw
RUN ./mvnw dependency:resolve
COPY src ./src

CMD ["./mvnw", "spring-boot:run"]