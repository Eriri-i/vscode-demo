FROM eclipse-temurin:17-jdk-alpine
VOLUME [ "/temp" ]
ARG JAR_FILE
COPY target/*.jar app.jar
ENTRYPOINT [ "java","-jar","/app.jar"]