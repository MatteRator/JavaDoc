FROM anapsix/alpine-java 

WORKDIR /app

COPY ./target/spring-petclinic-2.7.0-SNAPSHOT.jar ./spring-petclinic-2.7.0-SNAPSHOT.jar

CMD ["java","-jar","spring-petclinic-2.7.0-SNAPSHOT.jar"]