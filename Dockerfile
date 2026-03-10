FROM eclipse-temurin:21-jre-alpine
COPY ./target/Practice-App-0.0.1-SNAPSHOT.jar  /usr/app/            
WORKDIR /usr/app                                               
RUN sh -c 'touch Practice-App-0.0.1-SNAPSHOT.jar'                   
ENTRYPOINT ["java", "-jar", "Practice-App-0.0.1-SNAPSHOT.jar"]      