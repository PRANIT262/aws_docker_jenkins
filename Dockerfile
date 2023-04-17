FROM openjdk:17

EXPOSE 9006
ADD /target/AWS.jar AWS.jar

ENTRYPOINT [ "java","-jar","/AWS.jar" ]
