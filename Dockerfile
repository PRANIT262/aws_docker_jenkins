FROM openjdk:17

COPY /target/AWS.jar /aws_d_j.jar

CMD [ "java","-jar","aws_d_j.jar" ]