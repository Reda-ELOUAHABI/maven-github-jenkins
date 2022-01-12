FROM openjdk
COPY target/tp-docker.war /
EXPOSE 8081
ENTRYPOINT ["java","-jar","/tp-docker.war"]
