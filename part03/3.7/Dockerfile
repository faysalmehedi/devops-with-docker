FROM openjdk:8 AS build-phase

WORKDIR /usr/src/app 
COPY . .

RUN ./mvnw package

FROM openjdk:alpine

EXPOSE 8080
WORKDIR /usr/src/app 
COPY --from=build-phase /usr/src/app//target/docker-example-1.1.3.jar /usr/src/app//target/docker-example-1.1.3.jar

RUN adduser -D user01
USER user01

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]

