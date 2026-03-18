# official base image
FROM eclipse-temurin:21-jre-alpine

# working directory
WORKDIR /usr/app

# copy source code into destination directory
COPY ./target/Practice-App-0.0.1-SNAPSHOT.jar  /usr/app/            

# Run code at the time of image creation (optional)                                               
RUN sh -c 'touch Practice-App-0.0.1-SNAPSHOT.jar'  

# finally run when container stated
ENTRYPOINT ["java", "-jar", "Practice-App-0.0.1-SNAPSHOT.jar"]      
