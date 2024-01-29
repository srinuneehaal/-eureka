#docker login -u "srinivaspalli" -p "Akki123$$" docker.io

#docker build -t srinivaspalli/eureka-server:latest .
#docker push srinivaspalli/eureka-server:latest

FROM eclipse-temurin:17-jre-alpine
WORKDIR /opt
ENV PORT 8080
EXPOSE 8080
COPY target/*.jar /opt/app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar