
FROM eclipse-temurin:17-jdk-alpine AS build

WORKDIR /temp_app
COPY src src
COPY *.gradle . 
COPY gradlew .
COPY gradle/wrapper gradle/wrapper

RUN chmod +x gradlew
RUN ./gradlew war

FROM tomcat:10.0.18-jre17-temurin-focal AS server

COPY --from=build /temp_app/build/libs/*.war ${CATALINA_HOME}/webapps/hola.war
