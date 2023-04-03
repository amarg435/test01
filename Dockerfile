FROM eclipse-temurin:17-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
RUN mkdir /app/
USER spring:spring
VOLUME /tmp
COPY target/demo-application-0.0.1-SNAPSHOT.jar /app/app.jar
ENTRYPOINT ["java","-jar","/app/app.jar"]
