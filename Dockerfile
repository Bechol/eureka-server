FROM openjdk:17-alpine
ARG JAR_FILE=/target/*.jar
EXPOSE 8761
COPY ${JAR_FILE} eureka.jar
ENTRYPOINT ["java",  "-jar", "ROOT.jar"]