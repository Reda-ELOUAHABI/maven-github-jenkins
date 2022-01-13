FROM openjdk
COPY target/my-app-1.0-SNAPSHOT.war /
EXPOSE 8081
ENTRYPOINT ["java","-jar","/my-app-1.0-SNAPSHOT.war"]
