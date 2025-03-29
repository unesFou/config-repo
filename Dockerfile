FROM openjdk:17-jdk-slim
RUN apt-get update && apt-get install -y wget
WORKDIR /app
COPY target/config-server-0.0.1-SNAPSHOT.jar config-server-0.0.1-SNAPSHOT.jar
EXPOSE 9998
ENTRYPOINT ["java", "-jar", "config-server-0.0.1-SNAPSHOT.jar"]
