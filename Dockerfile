FROM openjdk:8
EXPOSE 8080
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} docker-jenkins-integration.jar
ADD target/docker-jenkins-integration.jar docker-jenkins-integration.jar
ENTRYPOINT ["java","jar","/docker-jenkins-integration.jar"]

## docker build configuartion settings.