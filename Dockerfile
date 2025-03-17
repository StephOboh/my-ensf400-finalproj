FROM gradle:7.6.1-jdk11

WORKDIR /app



COPY build.gradle .
COPY gradle.properties .
COPY gradle ./gradle
COPY src ./src

LABEL org.opencontainers.image.source https://github.com/StephOboh/ensf400-project-group48

EXPOSE 8080

CMD gradle apprun 
