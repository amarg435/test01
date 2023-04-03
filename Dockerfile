FROM openjdk:8
RUN addgroup -S spring && adduser -S spring -G spring
VOLUME /tmp
EXPOSE 8080
COPY target/demo-application-0.0.1-SNAPSHOT.jar app/app.jar
ENTRYPOINT ["java","-jar","app/app.jar"]
USER spring:spring
