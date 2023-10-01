FROM openjdk:17-alpine



RUN apk update

RUN apk add git maven

WORKDIR /app

COPY pom.xml /app

COPY src  /app/src

RUN mvn package

EXPOSE 8083

CMD ["java", "-jar", "/app/target/emu-0.0.1-SNAPSHOT.jar"]





