# official base image
FROM eclipse-temurin:21-jre-alpine

# container working directory
WORKDIR /usr/app

# copy source code from project to destination container working directory
COPY ./target/Practice-App-0.0.1-SNAPSHOT.jar  /usr/app/            

# Run code at the time of image creation (optional)                                               
RUN sh -c 'touch Practice-App-0.0.1-SNAPSHOT.jar'  

# finally run when the container starts
ENTRYPOINT ["java", "-jar", "Practice-App-0.0.1-SNAPSHOT.jar"]      
