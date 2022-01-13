FROM openjdk
COPY target/tp-docker.war /
EXPOSE 8081
ENTRYPOINT ["java","-jar","/my-app-1.0-SNAPSHOT.war"]
