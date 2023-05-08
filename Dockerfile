FROM eclipse-temurin:17-jdk-alpine
VOLUME [ "/temp" ]
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
# 像这样直接使用exec形式启动容器是不行的: ENTRYPOINT ["java","${JAVA_OPTS}","-jar","/app.jar"]
# 因为${}替换时shell的功能,需要用如下方式启用: ENTRYPOINT [ "sh","-c","java ${JAVA_OPTS} -jar /app.jar ${0} ${@} "]

# 在容器启动时，支持传递环境变量和 命令行参数
ENTRYPOINT [ "sh","-c","java ${JAVA_OPTS} -jar /app.jar ${0} ${@} "]