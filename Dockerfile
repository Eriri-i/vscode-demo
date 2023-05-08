FROM eclipse-temurin:17-jdk-alpine
VOLUME [ "/temp" ]
COPY run.sh .
COPY target/*.jar app.jar
ENTRYPOINT [ "run.sh"]