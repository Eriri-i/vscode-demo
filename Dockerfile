FROM eclipse-temurin:17-jdk-alpine
VOLUME [ "/temp" ]
# 初次构建时 增加指令: ARG JAR_FILE,并使用 如下构建指令
# "docker build --build-arg JAR_FILE=build/libs/*.jar -t tsj/test-vscode-demo . "
COPY target/*.jar app.jar
ENTRYPOINT [ "java","-jar","/app.jar"]