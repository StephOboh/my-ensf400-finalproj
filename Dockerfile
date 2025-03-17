FROM gradle:7.6.1-jdk11

WORKDIR /app

COPY build.gradle .
COPY gradle.properties .
COPY gradle ./gradle
COPY src ./src

EXPOSE 8080

CMD gradle apprun 
