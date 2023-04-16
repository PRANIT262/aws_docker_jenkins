FROM openjdk:17

COPY /target/AWS-Jenkins-Docker-Service-0.0.1-SNAPSHOT.jar /aws_d_j.jar

CMD [ "java","-jar","aws_d_j.jar" ]