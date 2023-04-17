FROM openjdk:17

EXPOSE 9006
ADD /target/Aws.jar Aws.jar

ENTRYPOINT [ "java","-jar","/Aws.jar" ]
