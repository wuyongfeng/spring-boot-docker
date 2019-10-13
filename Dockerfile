FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/*.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-XX:MetaspaceSize=128m","-XX:MaxMetaspaceSize=128m","-Xms512m","-Xmx512m","-Xmn256m","-Xss256k","-XX:SurvivorRatio=8","-XX:+UseConcMarkSweepGC","-jar","/app.jar"]