# use gradle with jdk 11 as the base image
FROM gradle:7.6.1-jdk11

# set working directory to app
WORKDIR /app

# copy the build and gradle configuration files
COPY build.gradle .
COPY gradle.properties .
COPY gradle ./gradle

# copy the application source code
COPY src ./src

# expose port 8080 for the app
EXPOSE 8080

# run the gradle task to start the app
CMD gradle apprun 
